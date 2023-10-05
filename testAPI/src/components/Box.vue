<script setup>
const props = defineProps({
  title: {
    type: String,
    default: "Judul",
  },
  description: {
    type: String,
    default:
      "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maxime nisi sunt eos officiis! Aliquid impedit magnam laborum nulla, rem amet.",
  },
  skills: {
    type: String,
    default: "1. Skills 1. 2. Skills 2",
  },
});
</script>

<template>
  <div class="bg-primary p-3 px-10 mx-auto w-full">
    <router-link to="/" class="text-white bg-gray-400 px-4 py-1 rounded"
      >Back</router-link
    >
    <br /><br />
    <h1 class="text-green-600 font-semibold text-2xl">{{ props.title }}</h1>
    <br />
    <div>
      {{ props.description }}
    </div>
    <br /><br />
    <ul class="list-disc ml-4">
      <li v-for="(skill, index) in skills" :key="index">{{ skill.name }}</li>
    </ul>
  </div>
</template>
