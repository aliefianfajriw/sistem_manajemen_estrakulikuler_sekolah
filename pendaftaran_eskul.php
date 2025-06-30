<?php
session_start();
include "db_conn.php";

if (!isset($_SESSION['id']) || $_SESSION['role'] !== 'siswa/i') {
    header("Location: index.php");
    exit;
}

$user_id = $_SESSION['id'];

$user_query = mysqli_query($conn, "SELECT nama, kelas FROM users WHERE id = $user_id");
$user = mysqli_fetch_assoc($user_query);

$daftar_ekskul_query = mysqli_query($conn, "SELECT id, nama_ekskul FROM daftar_ekskul");

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['ekskul_id'])) {
    $ekskul_id = intval($_POST['ekskul_id']);
    
    $cek = mysqli_query($conn, "SELECT * FROM pendaftaran_ekskul WHERE siswa_id=$user_id AND ekskul_id=$ekskul_id");
    if (mysqli_num_rows($cek) === 0) {
        mysqli_query($conn, "INSERT INTO pendaftaran_ekskul (siswa_id, ekskul_id) VALUES ($user_id, $ekskul_id)");
        $message = "<p style='color: green;'>✅ Pendaftaran berhasil!</p>";
    } else {
        $message = "<p style='color: orange;'>⚠️ Kamu sudah mendaftar ekskul ini.</p>";
    }
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Pendaftaran Ekskul</title>
    <style>
        body {
            font-family: sans-serif;
            background: #f0f0f0;
            padding: 40px;
        }
        form {
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            max-width: 400px;
            margin: auto;
        }
        select, button {
            padding: 8px;
            width: 100%;
            margin-top: 8px;
        }
        label {
            font-weight: bold;
        }
        h2 {
            text-align: center;
            color: #2c3e50;
        }
    </style>
</head>
<body>

<h2>Form Pendaftaran Ekskul</h2>

<?php if (isset($message)) echo $message; ?>

<form method="POST">
    <p><strong>Nama:</strong> <?= htmlspecialchars($user['nama']) ?></p>
    <p><strong>Kelas:</strong> <?= htmlspecialchars($user['kelas']) ?></p>

    <label for="ekskul_id">Pilih Ekskul:</label>
    <select name="ekskul_id" id="ekskul_id" required>
        <option value="" disabled selected>-- Pilih Ekskul --</option>
        <?php while ($row = mysqli_fetch_assoc($daftar_ekskul_query)): ?>
            <option value="<?= $row['id'] ?>">
                <?= htmlspecialchars($row['nama_ekskul']) ?>
            </option>
        <?php endwhile; ?>
    </select>

    <br><br>
    <button type="submit">Daftar</button>
</form>

</body>
</html>