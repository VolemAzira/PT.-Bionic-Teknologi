<script setup></script>

<template>
  <main class="w-full min-h-screen px-3 flex flex-col">
    <section>
      <div
        class="bg-blue-500 w-full h-[4rem] border-4 border-black text-white flex justify-center items-center"
      >
        1
      </div>
      <div class="md:flex">
        <div
          class="bg-blue-500 w-full h-[3rem] border-4 border-black text-white flex justify-center items-center"
        >
          2
        </div>
        <div
          class="bg-blue-500 w-full h-[3rem] border-4 border-black text-white flex justify-center items-center"
        >
          3
        </div>
      </div>
    </section>

    <section class="md:flex">
      <div class="w-full">
        <div
          class="bg-blue-500 w-full h-[14rem] border-4 border-black text-white flex justify-center items-center"
        >
          <div
            class="bg-red-500 w-full h-[12rem] border-4 border-black text-white flex justify-center items-center mx-10"
          >
            4
          </div>
        </div>
        <div class="flex">
          <div
            class="bg-blue-500 w-full h-[8rem] border-4 border-black text-white flex justify-center items-center"
          >
            5
          </div>
          <div
            class="bg-blue-500 w-full h-[8rem] border-4 border-black text-white flex justify-center items-center"
          >
            6
          </div>
          <div
            class="bg-blue-500 w-full h-[8rem] border-4 border-black text-white flex justify-center items-center"
          >
            7
          </div>
        </div>
      </div>
      <!-- --------------------------- -->
      <div
        class="bg-blue-500 md:w-[40%] border-4 border-black text-white flex md:flex-col justify-center items-center p-3"
      >
        <div
          class="bg-red-500 w-full h-[4rem] border-4 border-black text-white flex justify-center items-center m-5"
        >
          8
        </div>
        <div
          class="bg-red-500 w-full h-[4rem] border-4 border-black text-white flex justify-center items-center m-5"
        >
          9
        </div>
        <div
          class="bg-red-500 w-full h-[4rem] border-4 border-black text-white flex justify-center items-center m-5"
        >
          10
        </div>
      </div>
    </section>

    <section class="mt-2 hidden lg:flex w-full justify-between">
      <div
        class="bg-blue-500 w-[60%] h-[14rem] border-4 border-black text-white flex flex-col gap-1"
      >
        <div
          class="bg-red-500 w-[10rem] h-[4rem] flex justify-center items-center"
        ></div>
        <div
          class="bg-white w-[10rem] h-[5rem] flex justify-center items-center relative rotate-90 ml-5"
        ></div>
        <div
          class="bg-red-500 w-[10rem] h-[4rem] flex justify-center items-center z-10 ml-20"
        ></div>
      </div>
      <div>
        <img src="./assets/star.png" width="200" />
      </div>
    </section>
    <div
      class="bg-red-500 w-[10rem] h-[4rem] justify-center items-center relative mx-auto z-40 bottom-[13rem] left-[10rem] hidden lg:flex"
    ></div>
    <div
      class="bg-red-500 w-[10rem] h-[4rem] justify-center items-center relative mx-auto z-40 bottom-[8rem] left-[22rem] hidden lg:flex"
    ></div>
  </main>
</template>
