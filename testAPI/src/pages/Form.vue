<template>
  <main class="min-h-screen m-10">
    <Box
      v-for="(item, index) in filteredCardData"
      :key="index"
      :title="item.title"
      :description="item.description.txt"
      :skills="item.ptJobSkills"
    />
    <form @submit.prevent="submitForm" class="bg-primary p-3 px-10 mx-auto w-full">
      <h1 class="text-xl font-bold mb-3">Send Your Job Application</h1>
      <section class="flex gap-3">
        <div class="w-full">
          <label for="name" class="mb-3 font-semibold">Your Name</label>
          <input
            v-model="formData.name"
            type="text"
            id="name"
            placeholder="Enter your name"
            class="bg-primary border-b border-black w-full px-3 py-1"
          />
          <br /><br />
          <label for="email" class="mb-3 font-semibold">Email Address</label>
          <input
            v-model="formData.email"
            type="email"
            id="email"
            placeholder="Enter your email"
            class="bg-primary border-b border-black w-full px-3 py-1"
          />
          <br /><br />
          <h3 class="font-semibold">Upload Your Resume</h3>
          <label for="file" class="cursor-pointer p-10">
            <img
              src="../assets/upload.png"
              alt=""
              class="bg-orange-500 p-5 w-16 rounded"
            />
          </label>
          <input type="file" id="file" class="hidden" />
        </div>
        <div class="w-full">
          <label for="number" class="mb-3 font-semibold">Mobile Number</label>
          <input
            v-model="formData.number"
            type="text"
            id="number"
            placeholder="Enter your mobile number"
            class="bg-primary border-b border-black w-full px-3 py-1"
          />
          <br /><br />
          <label for="message" class="mb-3 font-semibold">Write Your Message Here...</label>
          <textarea
            v-model="formData.message"
            id="message"
            placeholder="Enter your message"
            class="bg-primary border-b border-black w-full px-3 py-1"
          ></textarea>
        </div>
      </section>
      <button
        type="submit"
        class="bg-gray-400 font-semibold p-2 rounded text-white hover:bg-gray-500 transition-all"
      >
        Send Message
      </button>
    </form>
  </main>
</template>

<script setup>
import { ref, onMounted, computed } from "vue";
import Box from "../components/Box.vue";
import Data from "../data.json";
import { useRoute } from "vue-router";

const cardData = ref([]);
const route = useRoute();

function fetchData() {
  cardData.value = Data;
}

onMounted(() => {
  fetchData();
});

// Create a computed property to filter cardData by id
const filteredCardData = computed(() => {
  const id = route.params.id;
  return cardData.value.filter((item) => item.id.toString() === id);
});

const API = "https://bti.id/services/btiportalcorems/api/pt-job-applies/no-auth";

const formData = ref({
  name: "",
  email: "",
  number: "",
  message: "",
});

const submitForm = async () => {
  try {
    const response = await fetch(API, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formData.value),
    });

    if (response.ok) {
      // Successful submission, you can handle the response here
      console.log("Application submitted successfully!");
      // Reset form data
      formData.value = {
        name: "",
        email: "",
        number: "",
        message: "",
      };
    } else {
      // Handle error responses
      console.error("Error submitting application.");
    }
  } catch (error) {
    console.error("An error occurred:", error);
  }
};
</script>
