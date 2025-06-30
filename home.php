      <?php session_start();
      if (!isset($_SESSION['id'])) {
    header("Location: index.php");
    exit;
}
      ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>
     <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</head>
<body>
    <section class="flex flex-col w-full items-center justify-center  my-16">
        <h1 class="text-green-600 font-serif text-3xl font-bold text-center"> Selamat Datang, 
            <?=$_SESSION["nama"]; ?>
        </h1>
        <h3 class="font-serif text-xl font-semibold">
            <?=$_SESSION["role"]; ?>
        </h3>
    </section>
    <section class="w-full -4 flex justify-around">
<div
  class="h-[16em] w-[18em] border-2 border-[rgba(75,130,33,0.8)] rounded-[1.5em] bg-gradient-to-br from-[rgba(75,130,33,1)] to-[rgba(75,130,33,0.4)] text-white font-nunito p-[1em] flex justify-center items-left flex-col gap-[0.75em] backdrop-blur-[12px]"
>
  <div>
    <h1 class="text-[2em] font-medium text-center">Jadwal</h1>
    <p class="text-[0.85em]">
      Jadwal manejemen data ekskul 
    </p>
  </div>

  <button
  onclick="window.location.href ='admin/manejemen_eskul.php'"
    class="h-fit w-fit px-[1em] py-[0.25em] border-[1px] rounded-full flex justify-center items-center gap-[0.5em] overflow-hidden group hover:translate-y-[0.125em] duration-200 backdrop-blur-[12px]"
  >
    <p>Masuk</p>
    <svg
      class="w-6 h-6 group-hover:translate-x-[10%] duration-300"
      stroke="currentColor"
      stroke-width="1"
      viewBox="0 0 24 24"
      fill="white"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M13.5 4.5 21 12m0 0-7.5 7.5M21 12H3"
        stroke-linejoin="round"
        stroke-linecap="round"
      ></path>
    </svg>
  </button>
</div>
    <?php if($_SESSION["role"] === "siswa/i") { ?>
<div
  class="h-[16em] w-[18em] border-2 border-[rgba(75,130,33,0.8)] rounded-[1.5em] bg-gradient-to-br from-[rgba(75,130,33,1)] to-[rgba(75,130,33,0.4)] text-white font-nunito p-[1em] flex justify-center items-left flex-col gap-[0.75em] backdrop-blur-[12px]"
>
  <div>
    <h1 class="text-[2em] font-medium text-center">Daftar</h1>
    <p class="text-[0.85em]">
      Formulir pendaftaran eskul
    </p>
  </div>

  <button
    class="h-fit w-fit px-[1em] py-[0.25em] border-[1px] rounded-full flex justify-center items-center gap-[0.5em] overflow-hidden group hover:translate-y-[0.125em] duration-200 backdrop-blur-[12px]"
  >
    <p>Masuk</p>
    <svg
      class="w-6 h-6 group-hover:translate-x-[10%] duration-300"
      stroke="currentColor"
      stroke-width="1"
      viewBox="0 0 24 24"
      fill="white"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M13.5 4.5 21 12m0 0-7.5 7.5M21 12H3"
        stroke-linejoin="round"
        stroke-linecap="round"
      ></path>
    </svg>
  </button>
</div>
    <?php } ?>

    <div
  class="h-[16em] w-[18em] border-2 border-[rgba(75,130,33,0.8)] rounded-[1.5em] bg-gradient-to-br from-[rgba(75,130,33,1)] to-[rgba(75,130,33,0.4)] text-white font-nunito p-[1em] flex justify-center items-left flex-col gap-[0.75em] backdrop-blur-[12px]"
>
  <div>
    <h1 class="text-[2em] font-medium text-center">Laporan Data</h1>
    <p class="text-[0.85em]">
      Laporan jumlah data eskul dan anggota
    </p>
  </div>

  <button
  onclick="window.location.href = 'daftar_anggota.php'"
    class="h-fit w-fit px-[1em] py-[0.25em] border-[1px] rounded-full flex justify-center items-center gap-[0.5em] overflow-hidden group hover:translate-y-[0.125em] duration-200 backdrop-blur-[12px]"
  >
    <p>Masuk</p>
    <svg
      class="w-6 h-6 group-hover:translate-x-[10%] duration-300"
      stroke="currentColor"
      stroke-width="1"
      viewBox="0 0 24 24"
      fill="white"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M13.5 4.5 21 12m0 0-7.5 7.5M21 12H3"
        stroke-linejoin="round"
        stroke-linecap="round"
      ></path>
    </svg>
  </button>
</div>

    </section>
</body>
</html>