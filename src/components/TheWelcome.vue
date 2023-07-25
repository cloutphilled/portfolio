<script setup lang="ts">
import WelcomeItem from "./WelcomeItem.vue";
// import VuePdfEmbed from 'vue-pdf-embed';
</script>

<template>
  <WelcomeItem>
    <template #icon>
      <BIconShareFill class="bi" />
    </template>
    <template #heading>My links</template>
    <a href="mailto:phillipfriispetersen@gmail.com?subject=Website Inquiry" target="_blank"><BIconEnvelopeFill class="bi"/></a>
    &nbsp
    <a href="https://github.com/cloutphilled" target="_blank"><BIconGithub class="bi"/></a>
    &nbsp
    <a href="https://gitlab.com/cloutphilled" target="_blank"><BIconGit class="bi"/></a>
    &nbsp
    <a href="https://instagram.com/clout_philled" target="_blank"><BIconInstagram class="bi" /></a>
    &nbsp
    <a href="https://www.linkedin.com/in/phillip-friis-petersen-2184791b2/" target="_blank"><BIconLinkedin class="bi"/></a>

  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <BIconPersonFill class="bi"/>
    </template>
    <template #heading>Summary</template>
    <p>Fullstack software developer & Digital Concept Developer who also shreds a mean guitar by making noisy music. Specializing in frontend development, I am passionate about bringing together creative designs with code.</p>
  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <BIconCodeSquare class="bi"/>
    </template>
    <template #heading>Toolkit</template>
      <ul>
        <li>JavaScript</li>
        <li>HTML</li>
        <li>CSS</li>
        <li>TypeScript</li>
        <li>React</li>
        <li>Angular</li>
        <li>Vue</li>
        <li>Vite</li>
        <li>VitePress</li>
        <li>Node.js</li>
        <li>NEXT.js</li>
        <li>Front Matter</li>
        <li>Java</li>
        <li>SQL/PostgreSQL</li>
        <li>Bootstrap</li>
        <li>Tailwind CSS</li>
        <li>Git</li>
        <li>Docker</li>
        <li>Swagger</li>
        <li>Spring/Springboot</li>
        <li>Hibernate</li>
        <li>REST</li>
        <li>Keycloak</li>
        <li>Powershell</li>
        <li>Microsoft Azure</li>
        <li>UX-design</li>
        <li>Figma</li>
        <li>XD</li>
        <li>Photoshop</li>
        <li>Premiere Pro</li>
        <li>InDesign</li>
        <li>Illustrator</li>
        <li>Wordpress</li>
      </ul>  
  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <BIconFileEarmarkTextFill class="bi" />
    </template>
    <template #heading>Resume</template>
    <a href="/PFP_CV_english.pdf" target="_blank">My resume</a>
    <!-- <vue-pdf-embed :source="source1" /> -->
  </WelcomeItem>

  <!-- <WelcomeItem>
    <template #icon>
      <BIconFolderFill class="bi"/>
    </template>
    <template #heading>Placeholder</template>
  </WelcomeItem> -->
</template>


<style>
ul{
    list-style-type: none;
    -webkit-columns: 3;
    -moz-columns: 3;
    columns: 3;
    margin: 0;
    justify-content: start;
}


</style>