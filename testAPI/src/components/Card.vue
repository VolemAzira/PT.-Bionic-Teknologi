<script setup>
const props = defineProps({
  title: {
    type: String,
    default: "Judul",
  },
});
</script>

<template>
  <div
    class="bg-primary flex items-center justify-between p-3 px-5 rounded-lg shadow-lg mx-auto"
  >
    <h1 class="text-green-600 font-semibold">{{ props.title }}</h1>
    <button class="bg-orange-500 px-4 py-1 rounded-lg text-white font-semibold">
      See Job
    </button>
  </div>
</template>
