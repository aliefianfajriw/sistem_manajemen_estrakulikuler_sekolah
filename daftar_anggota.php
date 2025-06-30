<?php
session_start();
include "db_conn.php";

if (!isset($_SESSION['id'])) {
    header("Location: index.php");
    exit;
}

$user_id = $_SESSION['id'];
$user_role = $_SESSION['role'];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['hapus_anggota']) && $user_role !== 'siswa/i') {
        $siswa_id = intval($_POST['siswa_id']);
        $ekskul_id = intval($_POST['ekskul_id']);
        mysqli_query($conn, "DELETE FROM pendaftaran_ekskul WHERE siswa_id=$siswa_id AND ekskul_id=$ekskul_id");
    }

    if (isset($_POST['hapus_ekskul']) && $user_role !== 'siswa/i') {
        $ekskul_id = intval($_POST['ekskul_id']);
        mysqli_query($conn, "DELETE FROM pendaftaran_ekskul WHERE ekskul_id=$ekskul_id");
        mysqli_query($conn, "DELETE FROM daftar_ekskul WHERE id=$ekskul_id");
    }
}

// Ambil semua ekskul
$ekskul_query = mysqli_query($conn, "SELECT * FROM daftar_ekskul");
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Daftar Anggota Ekskul</title>
    <style>
        body {
            font-family: sans-serif;
            padding: 20px;
            background: #f9f9f9;
        }
        h2 {
            color: #333;
        }
        .ekskul-box {
            background: #fff;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        .anggota-list ul {
            padding-left: 20px;
        }
        .anggota-list li {
            margin: 5px 0;
        }
        form.inline {
            display: inline;
        }
        button {
            margin-left: 8px;
            padding: 4px 8px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            background-color: #e74c3c;
            color: white;
        }
        button:hover {
            background-color: #c0392b;
        }
        .hapus-ekskul {
            margin-top: 10px;
            background-color: #555;
        }
    </style>
</head>
<body>

<h2>Daftar Ekskul dan Anggota</h2>

<?php while ($ekskul = mysqli_fetch_assoc($ekskul_query)): ?>
    <div class="ekskul-box">
        <strong><?= htmlspecialchars($ekskul['nama_ekskul']) ?></strong>
        <?php
        $ekskul_id = $ekskul['id'];
        $anggota_query = mysqli_query($conn, "
            SELECT u.id AS user_id, u.nama, u.kelas
            FROM pendaftaran_ekskul p
            JOIN users u ON p.siswa_id = u.id
            WHERE p.ekskul_id = $ekskul_id
        ");
        $jumlah_anggota = mysqli_num_rows($anggota_query);
        ?>
        <p><small>👥 Jumlah anggota: <?= $jumlah_anggota ?></small></p>
        
        <div class="anggota-list">
            <ul>
                <?php if ($jumlah_anggota === 0): ?>
                    <li><i><small>Tidak ada anggota.</small></i></li>
                <?php else: ?>
                    <?php while ($anggota = mysqli_fetch_assoc($anggota_query)): ?>
                        <li>
                            <?= htmlspecialchars($anggota['nama']) ?> (<?= htmlspecialchars($anggota['kelas']) ?>)
                            <?php if ($user_role !== 'siswa/i'): ?>
                                <form method="post" class="inline" onsubmit="return confirm('Yakin ingin menghapus anggota ini?')">
                                    <input type="hidden" name="siswa_id" value="<?= $anggota['user_id'] ?>">
                                    <input type="hidden" name="ekskul_id" value="<?= $ekskul['id'] ?>">
                                    <button type="submit" name="hapus_anggota">Hapus</button>
                                </form>
                            <?php endif; ?>
                        </li>
                    <?php endwhile; ?>
                <?php endif; ?>
            </ul>
        </div>

        <?php if ($user_role !== 'siswa/i'): ?>
            <form method="post" onsubmit="return confirm('Yakin ingin menghapus ekskul ini beserta semua anggotanya?')">
                <input type="hidden" name="ekskul_id" value="<?= $ekskul['id'] ?>">
                <button type="submit" name="hapus_ekskul" class="hapus-ekskul">Hapus Ekskul</button>
            </form>
        <?php endif; ?>
    </div>
<?php endwhile; ?>
</body>
</html>