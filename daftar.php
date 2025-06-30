<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar</title>
     <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</head>
<body>
     <section>
  <div class="max-w-2xl px-4 py-8 mx-auto lg:py-16">
      <h2 class="mb-4 text-xl text-center font-bold ">Daftar</h2>
      <?php session_start(); ?>
      <form action="php/register.php" method="post">
        <?php if (isset($_SESSION['error'])) { ?>
            <div
    role="alert"
    class="bg-red-100 dark:bg-red-900 border-l-4 border-red-500 dark:border-red-700 text-red-900 dark:text-red-100 p-2 rounded-lg flex items-center transition duration-300 ease-in-out hover:bg-red-200 dark:hover:bg-red-800 transform hover:scale-105"
  >
    <svg
      stroke="currentColor"
      viewBox="0 0 24 24"
      fill="none"
      class="h-5 w-5 flex-shrink-0 mr-2 text-red-600"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M13 16h-1v-4h1m0-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
        stroke-width="2"
        stroke-linejoin="round"
        stroke-linecap="round"
      ></path>
    </svg>
    <div class="text-xs font-semibold">
        <?php echo $_SESSION["error"] ?>
     </div>
        <?php unset($_SESSION['error']) ?>
  </div>
            <?php } ?>
          <div class="flex flex-col">
              <div class="">
                  <label for="nama" class="block mb-2 text-sm font-medium ">Nama</label>
                  <input type="text" name="nama" id="nama" class="bg-green-50 border border-green-300 text-green-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-green-700 dark:border-green-600 dark:placeholder-green-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"  placeholder="Masukan nama lengkap kamu" >
              </div>
              <div >
                  <label for="sandi" class="block mb-2 text-sm font-medium ">password</label>
                  <input type="password" name="sandi" id="sandi" class="bg-green-50 border border-green-300 text-green-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-green-700 dark:border-green-600 dark:placeholder-green-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"  placeholder="Masukan password kamu" >
              </div>
              <div id="input-kelas">
                <label for="kelas" name="kelas" class="block mb-2 text-sm font-medium ">Kelas</label>
                  <select id="kelas" name="kelas" class="bg-green-50 border border-green-300 text-green-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-green-700 dark:border-green-600 dark:placeholder-green-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500">
                      <option selected value=""></option>
                      <option value="7A">7A</option>
                      <option value="7B">7B</option>
                      <option value="7C">7C</option>
                      <option value="8A">8A</option>
                      <option value="8B">8B</option>
                      <option value="8C">8C</option>
                      <option value="9A">9A</option>
                      <option value="9B">9B</option>
                      <option value="9C">9C</option>
                  </select>

              </div>
                  <div>
                  <label for="role" class="block mb-2 text-sm font-medium ">Role</label>
                  <select id="role" name="role" class="bg-green-50 border border-green-300 text-green-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-green-700 dark:border-green-600 dark:placeholder-green-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500">
                      <option selected value="siswa/i">siswa/i</option>
                      <option value="pembina">pembina</option>
                      <option value="guru">guru</option>
                  </select>
                   <button type="submit" class="bg-green-500 p-2 rounded-md mt-3">
                  Daftar
              </button>
              <a href="index.php">sudah memiliki akun? login</a>
              
              </div>
      </form>
  </div>
</section>

<script>
  const role = document.getElementById('role');
  const kelasField = document.getElementById('input-kelas');
  role.addEventListener('change', function(){
   if(this.value === 'siswa/i') {
    kelasField.style.display = "block"
   } else {
    kelasField.style.display = "none"
   }
  })
</script>
</body>
</html>