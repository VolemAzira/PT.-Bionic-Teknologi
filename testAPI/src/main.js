import { createApp } from "vue";
import App from "./App.vue";
import { createRouter, createWebHashHistory } from "vue-router";
import Home from "./pages/Home.vue";
import Form from "./pages/Form.vue";
import "./style.css";

const routes = [
  { path: "/", component: Home },
  { path: "/form/:id", component: Form },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

const app = createApp(App);
app.use(router);
app.mount("#app");
