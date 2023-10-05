<!-- home.vue -->
<template>
  <main class="m-10 min-h-screen">
    <h1 class="text-green-600 font-bold text-center text-4xl mb-10">
      We’re Hiring
    </h1>
    <section>
      <router-link
        v-for="(item, index) in cardData"
        :key="index"
        :to="`/form/${item.id}`"
      >
        <Card :title="item.title" :description="item.description.txt" />
      </router-link>
    </section>
  </main>
</template>

<script setup>
import { ref, onMounted } from "vue";
import Card from "../components/Card.vue";
import Data from "../data.json";

const cardData = ref([]);

function fetchData() {
  cardData.value = Data;
}

onMounted(() => {
  fetchData();
});
</script>