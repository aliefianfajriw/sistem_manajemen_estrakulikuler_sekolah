<?php
session_start();
include "../db_conn.php"; 

if (!isset($_SESSION['id']) || !isset($_SESSION['role'])) {
    header("Location: ../index.php");
    exit;
}
$edit_id = isset($_GET['edit']) ? intval($_GET['edit']) : null;

$user_id = $_SESSION['id'];
$user_role = $_SESSION['role'];

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['tambah']) && ($user_role === 'pembina' || $user_role === 'guru/tu')) {
    $nama_ekskul = htmlspecialchars(trim($_POST['nama_ekskul']));
    $jadwal = htmlspecialchars(trim($_POST['jadwal']));
    $pembina = htmlspecialchars(trim($_POST['nama_pembina']));
    
    if (!empty($nama_ekskul) && !empty($jadwal) && !empty($pembina)) {
        $query = "INSERT INTO ekskul (nama_ekskul, jadwal, pembina_id, nama_pembina) VALUES ('$nama_ekskul', '$jadwal', '$user_id', '$pembina')";
        mysqli_query($conn, $query);
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['update']) && ($user_role === 'pembina' || $user_role === 'guru/tu')) {
    $id = intval($_POST['id']);
    $nama_ekskul = htmlspecialchars(trim($_POST['nama_ekskul']));
    $jadwal = htmlspecialchars(trim($_POST['jadwal']));
    $nama_pembina = htmlspecialchars(trim($_POST['nama_pembina']));
    
    mysqli_query($conn, "UPDATE ekskul SET nama_ekskul='$nama_ekskul', jadwal='$jadwal', nama_pembina='$nama_pembina' WHERE id=$id");
}
if (isset($_GET['hapus']) && ($user_role === 'pembina' || $user_role === 'guru/tu')) {
    $id = intval($_GET['hapus']);
    mysqli_query($conn, "DELETE FROM ekskul WHERE id=$id");
    header("Location: manejemen_eskul.php");
    exit;
}

$result = mysqli_query($conn, "SELECT ekskul.*, nama_pembina AS pembina FROM ekskul LEFT JOIN users ON ekskul.pembina_id = users.id");
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Manajemen Ekskul</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
  <h2 class="text-4xl text-green-600 text-center mt-4 mb-6">Daftar Kegiatan Ekstrakurikuler</h2>

<table class="w-[90%] mx-auto border">
    <thead>
        <tr class="border bg-green-800 text-white">
            <th>No</th>
            <th>Nama Ekskul</th>
            <th>Jadwal</th>
            <th>Pembina</th>
            <?php if ($user_role === 'pembina' || $user_role === 'guru/tu'): ?>
                <th>Aksi</th>
            <?php endif; ?>
        </tr>
    </thead>
    <tbody>
        
        <?php $i = 1; while ($row = mysqli_fetch_assoc($result)): ?>
    <tr class="border text-center">
        <?php if ($edit_id === intval($row['id'])): ?>
        <form method="POST">
            <input type="hidden" name="id" value="<?= $row['id'] ?>">
            <td><?= $i++ ?></td>
            <td><input type="text" name="nama_ekskul" value="<?= htmlspecialchars($row['nama_ekskul']) ?>" required></td>
            <td><input type="datetime-local" name="jadwal" value="<?= date('Y-m-d\TH:i', strtotime($row['jadwal'])) ?>" required></td>
            <td><input type="text" name="nama_pembina" value="<?= htmlspecialchars($row['pembina']) ?>" required></td>
            <td>
                <button type="submit" name="update" class="text-blue-600">Simpan</button> |
                <a href="manejemen_eskul.php" class="text-gray-600">Batal</a>
            </td>
        </form>
        <?php else: ?>
        <td><?= $i++ ?></td>
        <td><?= htmlspecialchars($row['nama_ekskul']) ?></td>
        <td><?= date('d M Y H:i', strtotime($row['jadwal'])) ?></td>
        <td><?= htmlspecialchars($row['pembina']) ?? 'Belum ditentukan' ?></td>
            <?php if ($user_role === 'pembina' || $user_role === 'guru/tu'): ?>
        <td>
            <a href="?edit=<?= $row['id'] ?>" class="text-blue-600">Edit</a> |
            <a href="?hapus=<?= $row['id'] ?>" onclick="return confirm('Yakin ingin menghapus?')" class="text-red-600">Hapus</a>
        </td>
        <?php endif; ?>
        <?php endif; ?>
    </tr>
<?php endwhile; ?>
    </tbody>
</table>

<hr class="my-6 w-[90%] mx-auto">
<?php if ($user_role === 'pembina' || $user_role === 'guru/tu'): ?>
<h3 class="text-2xl text-center mb-2">Tambah Ekskul Baru</h3>
<form method="post" class="w-[90%] mx-auto ">
    <input type="hidden" name="tambah" class="border-1 border-solid" value="1">
    <label>Nama Ekskul:</label><br>
    <input type="text" name="nama_ekskul" class="border-2 border-solid" placeholder="nama eskul" required><br><br>

    <label>Jadwal (tanggal & waktu):</label><br>
    <input type="datetime-local" name="jadwal" class="border-2 border-solid" placeholder="jadwal waktu" required><br><br>

    <label>Nama Pembina:</label><br>
    <input type="text" placeholder="nama pembina" name="nama_pembina" class="border-2 border-solid" required><br><br>

    <button type="submit" class="cursor-pointer transition-all bg-green-600 text-white px-6 py-2 rounded-lg
border-green-700
border-b-[4px] hover:brightness-110 hover:-translate-y-[1px] hover:border-b-[6px]
active:border-b-[2px] active:brightness-90 active:translate-y-[2px]">Tambah</button>
</form>
<?php endif; ?>

    <script>
        function confirmDelete(id) {
            if (confirm("Apakah kamu yakin ingin menghapus ekskul ini?")) {
                window.location = "ekskul.php?hapus=" + id;
            }
        }
    </script>
</body>
</html>