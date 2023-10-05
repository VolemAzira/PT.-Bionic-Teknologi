<script setup>
import Card from "../components/Card.vue";

const URL_API = "https://bti.id/services/btiportalcorems/api/pt-job-posts/no-auth";
let cardData = [];

// Mengambil data dari API
async function fetchData() {
  try {
    const response = await fetch(URL_API);
    const data = await response.json();
    cardData = data; // Menyimpan data ke variabel cardData
  } catch (error) {
    console.error("Error fetching data:", error);
  }
}

fetchData(); 
</script>

<template>
  <main class="mx-10">
    <h1>Home</h1>
    <div>
      <!-- Mengulang data dari API untuk membuat Card -->
      <Card v-for="(item, index) in cardData" :key="index" :title="item.title" />
    </div>
  </main>
</template>
