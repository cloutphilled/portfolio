import { createApp } from "vue";
import { createPinia } from "pinia";
import App from "./App.vue";
import router from "./router";
import { BootstrapIconsPlugin } from "bootstrap-icons-vue";
import "./assets/main.css";
// import * as FaIcons from "oh-vue-icons/icons/fa";

const app = createApp(App);
// const Fa = Object.values({...FaIcons});
// addIcons(...Fa);

app.use(createPinia());
app.use(router);
app.use(BootstrapIconsPlugin);
// app.use(BootstrapIconsVue);
app.mount("#app");
