<?php
session_start();
include "../db_conn.php";

$nama = "";
$password = "";
function test_input($data) {
$data = trim($data);
$data = stripslashes($data);
$data = htmlspecialchars($data);
return $data;
}
if(isset($_POST['nama']) && isset($_POST['sandi']) && isset($_POST['role']) && isset($_POST['kelas'])) {
  $nama = test_input($_POST['nama']);
  $password = test_input( $_POST['sandi']);
  $role = test_input( $_POST['role']);
  $kelas = test_input( $_POST['kelas']);

  if ($role === 'siswa/i') {
        if (empty($_POST['kelas'])) {
          header("Location: ../register.php");
            $_SESSION['error'] ="nama kelas wajib di isi";
                    } 
        $kelas = test_input($_POST['kelas']);
    } else {
        $kelas = null;
    }
  if(empty($nama)){
    $_SESSION["error"] = "nama wajib di isi";
    header('Location: ../index.php');
    exit;
  } else if(empty($password)) {
   $_SESSION["error"] = "password wajib di isi";
    header('Location: ../index.php');
    exit;
  } else {
    $password = md5($password);
    $sql = "SELECT * FROM users WHERE nama='$nama' AND sandi='$password' AND role='$role' AND kelas='$kelas'";
    $result = mysqli_query($conn, $sql);

     
    if(mysqli_num_rows($result) ===  1) {
      $row = mysqli_fetch_assoc($result);
        $_SESSION['id'] = $row['id'];
        $_SESSION['nama'] = $row['nama'];
        $_SESSION['sandi'] = $row['sandi'];
        $_SESSION['role'] = $row['role'];
        $_SESSION['kelas'] = $row['kelas'];

        header('Location: ../home.php');
        exit;
      } else {
        $_SESSION["error"] = "nama atau password salah";
        header("Location: ../index.php");
      }
    }
  } else {
    header("Location: ../index.php");
}