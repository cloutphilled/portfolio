import { createApp } from "vue";
import { createPinia } from "pinia";
import App from "./App.vue";
import router from "./router";
import { BootstrapIconsPlugin } from "bootstrap-icons-vue";
import "./assets/main.css";

const app = createApp(App);

app.use(createPinia());
app.use(router);
app.use(BootstrapIconsPlugin);
// app.use(BootstrapIconsVue);
app.mount("#app");
