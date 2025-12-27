<script setup lang="ts">
import { RouterLink, RouterView, useRoute } from "vue-router";
import { computed } from "vue";

import migImg from "@/assets/mig.jpg";
import aboutImg from "@/assets/@anna.borgkvist-00056.jpg";
import projectsImg from "@/assets/@anna.borgkvist-09925.jpg";
import moonOverlay from "@/assets/Telos_moon2_white.png";
import projectsOverlay from "@/assets/LP_TELOS_Front_IG06.jpg";

const route = useRoute();

const currentImage = computed(() => {
  switch (route.path) {
    case '/about':
      return aboutImg;
    case '/projects':
      return projectsImg;
    default:
      return migImg;
  }
});
</script>

<template>
  <header>
    <div class="header-content">
      <h1 class="name">Phillip Friis Petersen</h1>
      <h2 class="tagline">Platform Engineer & Musician</h2>
      
      <div class="image-container">
        <img
          alt="Picture of me"
          class="logo"
          :class="{ 'projects-photo': route.path === '/projects' }"
          :src="currentImage"
          width="400"
          loading="eager"
        />
        <img
          v-if="route.path === '/about'"
          :src="moonOverlay"
          class="moon-overlay"
          alt="Moon overlay"
        />
        <img
          v-if="route.path === '/projects'"
          :src="projectsOverlay"
          class="projects-overlay"
          alt="Projects overlay"
        />
      </div>
      
      <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/about">About Me</RouterLink>
        <RouterLink to="/projects">Projects</RouterLink>
      </nav>
    </div>
  </header>

  <RouterView />
</template>

<style scoped>
header {
  line-height: 1.5;
  max-height: 100vh;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

nav {
  display: flex;
  justify-content: center;
  gap: 1rem;
  width: 100%;
  font-size: 12px;
  text-align: center;
  margin-top: 2rem;
}

nav a {
  display: inline-block;
  padding: 0.75rem 1.5rem;
  font-size: 1rem;
  border-radius: 8px;
  background: rgba(255, 255, 255, 0.05);
  text-decoration: none;
  color: inherit;
  transition: transform 0.2s, background 0.2s, box-shadow 0.2s;
}

nav a:hover {
  transform: translateY(-3px);
  background: rgba(255, 255, 255, 0.1);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
}

nav a.router-link-exact-active {
  font-weight: bold;
  color: hsla(160, 100%, 37%, 1);
  background: rgba(0, 179, 119, 0.1);
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .header-content {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: -150px;
  }

  .image-container {
    position: relative;
    margin-top: 0.5rem;
    margin-bottom: 0.5rem;
    width: 400px;
    height: 500px;
    overflow: hidden;
  }

  .logo {
    width: 400px;
    height: 500px;
    object-fit: cover;
  }

  .logo.projects-photo {
    object-position: center 30%;
    transform: scale(1.15);
  }

  .moon-overlay {
    position: absolute;
    top: 25%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 60%;
    height: auto;
    object-fit: contain;
    mix-blend-mode: screen;
    opacity: 0.35;
    pointer-events: none;
  }

  .projects-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    mix-blend-mode: multiply;
    opacity: 0.85;
    pointer-events: none;
  }

  nav {
    text-align: center;
    font-size: 1rem;
    padding: 1rem 0;
    margin-top: 1rem;
  }

  .name {
    font-size: 2.6rem;
    font-weight: 500;
    color: hsla(160, 100%, 37%, 1);
    margin: 0;
    text-align: center;
    letter-spacing: 0.02em;
    white-space: nowrap;
  }

  .tagline {
    font-size: 1.4rem;
    color: #aaa;
    margin: 0.5rem 0;
    text-align: center;
    letter-spacing: 0.16em;
  }
}
</style>
