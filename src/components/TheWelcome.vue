<script setup lang="ts">
import WelcomeItem from "./WelcomeItem.vue";
import DocumentationIcon from "./icons/IconDocumentation.vue";
import ToolingIcon from "./icons/IconTooling.vue";
import EcosystemIcon from "./icons/IconEcosystem.vue";
import CommunityIcon from "./icons/IconCommunity.vue";
import SupportIcon from "./icons/IconSupport.vue";
import AiFillGitlab from "react-icons";


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
    <p>Fullstack software developer who also shreds a mean guitar by making noisy music. Specializing in Front-End Development, I am passionate about bringing together creative designs with code.</p>
  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <BIconCodeSquare class="bi"/>
    </template>
    <template #heading>Toolkit</template>
    <p>JavaScript, HTML, CSS, JavaScript, React, Angular, Vue, TypeScript, Java, SQL, PostgreSQL, Bootstrap, Tailwind CSS, Git, VS Code, Docker, Swagger, Spring, Springboot, REST, SuperCollider, Figma, XD, Photoshop, Premiere Pro, InDesign, Illustrator.</p>
  </WelcomeItem>

  

  <WelcomeItem>
    <template #icon>
      <BIconFileEarmarkTextFill class="bi" />
    </template>
    <template #heading>Resume</template>
    <a href="https://drive.google.com/file/d/1_AVy6F5Mvr_g-fyi8LM5If-dD8sdtgn3/view?usp=share_link" target="_blank">My resume</a>


  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <BIconFolderFill class="bi"/>
    </template>
    <template #heading>Projects</template>
    Here's a snippet of my projects:
    <br/>

    <p><a href="https://cloutphilled.github.io" target="_blank">TELOS</a> - my first coding project (vanilla JS) was part of my bachelor thesis.</p>
    <p><a href="https://javascript-komputer-store.netlify.app" target="_blank">KomputerStore</a> - another project made with vanilla JS. (The API seems to be invalid currently) </p>
    <p><a href="https://angular-pokemon-app.netlify.app/pokemons" target="_blank">Angular Pokemon App</a> - an app created with the Angular framework. Some of the features are missing due to the API handling user data is currently unavailable. </p>
    <br/>
    <p>More to be added...</p>
  </WelcomeItem>
</template>


