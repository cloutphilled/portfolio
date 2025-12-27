<script setup lang="ts">
defineProps<{
  msg: string;
}>();
</script>

<template>
  <div class="greetings">
    <h1 class="green">{{ msg }}</h1>
    <h2>
      Platform Engineer & Musician
        </h2>
  </div>
</template>

<style scoped>
h1 {
  font-weight: 500;
  font-size: 2.6rem;
  margin-bottom: 0.5rem;
}

h2 {
  font-size: 1.4rem;
  margin-top: 2rem;
  margin-bottom: 0;
  color: #aaa;
}

h3 {
  font-size: 1.2rem;
}

.greetings h1,
.greetings h3 {
  text-align: center;
}

@media (min-width: 1024px) {
  .greetings {
    width: 100%;
    text-align: center;
    margin-top: 3rem;
  }
  
  .greetings h1,
  .greetings h2,
  .greetings h3 {
    text-align: center;
  }
}
</style>
