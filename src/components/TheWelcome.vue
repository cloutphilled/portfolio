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
    <a
      href="mailto:phillipfriispetersen@gmail.com?subject=Website Inquiry"
      target="_blank"
      ><BIconEnvelopeFill class="bi"
    /></a>
    &nbsp
    <a href="https://github.com/cloutphilled" target="_blank"
      ><BIconGithub class="bi"
    /></a>
    &nbsp
    <a href="https://gitlab.com/cloutphilled" target="_blank"
      ><BIconGit class="bi"
    /></a>
    &nbsp
    <a href="https://instagram.com/clout_philled" target="_blank"
      ><BIconInstagram class="bi"
    /></a>
    &nbsp
    <a
      href="https://www.linkedin.com/in/phillip-friis-petersen-2184791b2/"
      target="_blank"
      ><BIconLinkedin class="bi"
    /></a>
  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <BIconPersonFill class="bi" />
    </template>
    <template #heading>Summary</template>
    <p>
      Fullstack software developer & Digital Concept Developer who also shreds a
      mean guitar by making noisy music. Specializing in frontend development, I
      am passionate about bringing together creative designs with code.
    </p>
  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <BIconCodeSquare class="bi" />
    </template>
    <template #heading>Toolkit</template>
    <article>
      <p>PowerShell</p>
      <p>Microsoft Azure</p>
      <p>Microsoft 365</p>
      <p>Micosoft Intune</p>
      <p>Sharepoint</p>
      <p>JavaScript</p>
      <p>HTML</p>
      <p>CSS</p>
      <p>TypeScript</p>
      <p>Vue</p>
      <p>Vite</p>
      <p>VitePress</p>
      <p>React</p>
      <p>Angular</p>
      <p>Node.js</p>
      <p>NEXT.js</p>
      <p>Front Matter</p>
      <p>Java</p>
      <p>SQL/PostgreSQL</p>
      <p>Bootstrap</p>
      <p>Tailwind CSS</p>
      <p>Git</p>
      <p>Docker</p>
      <p>Swagger</p>
      <p>Spring/Springboot</p>
      <p>Hibernate</p>
      <p>REST</p>
      <p>Keycloak</p>
      <p>UX-design</p>
      <p>Figma</p>
      <p>AdobeXD</p>
      <p>Adobe Photoshop</p>
      <p>Adobe PremierePro</p>
      <p>Adobe InDesign</p>
      <p>Adobe Illustrator</p>
      <p>WordPress</p>
    </article>
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
article {
  list-style-type: none;
  -webkit-columns: 3;
  -moz-columns: 3;
  columns: 3;
  margin: 0;
  justify-content: start;
}
</style>
