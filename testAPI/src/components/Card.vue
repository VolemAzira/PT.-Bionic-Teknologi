<script setup>
import { defineProps } from "vue";

const { title, href } = defineProps({
  title: {
    type: String,
    default: "Judul",
  },
  href: {
    type: String,
    default: "#",
  },
});
</script>

<template>
  <div
    class="bg-primary flex items-center justify-between p-3 px-5 rounded-lg shadow-lg mx-auto w-full my-3"
  >
    <h1 class="text-green-600 font-semibold">{{ title }}</h1>
    <a
      :href="href"
      class="bg-orange-500 px-4 py-1 rounded-lg text-white font-semibold"
      >See Job</a
    >
  </div>
</template>
