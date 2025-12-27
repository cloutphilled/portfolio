<script setup lang="ts">
import WelcomeItem from "./WelcomeItem.vue";
// import VuePdfEmbed from 'vue-pdf-embed';

const toolkit = [
  // AI Tools
  { name: 'Factory Droid', icon: '/icons/favicon.svg' },
  { name: 'ChatGPT', icon: 'https://upload.wikimedia.org/wikipedia/commons/0/04/ChatGPT_logo.svg' },
  // Microsoft & Cloud
  { name: 'Azure', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/azure/azure-original.svg' },
  { name: 'Microsoft 365', icon: 'https://raw.githubusercontent.com/devicons/devicon/master/icons/windows8/windows8-original.svg' },
  { name: 'Active Directory', icon: 'https://img.icons8.com/color/48/active-directory.png' },
  { name: 'Intune', icon: 'https://img.icons8.com/color/48/microsoft-intune.png' },
  { name: 'SharePoint', icon: '/icons/ms-sharepoint-svgrepo-com.svg' },
  { name: 'Exchange', icon: '/icons/Microsoft_Exchange_(2019-present).svg' },
  // Shell & Scripting
  { name: 'PowerShell', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/powershell/powershell-original.svg' },
  { name: 'Bash', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bash/bash-plain.svg', invert: true },
  { name: 'Linux', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg' },
  { name: 'macOS', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apple/apple-original.svg', invert: true },
  // Version Control
  { name: 'Git', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg' },
  { name: 'GitHub', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg', invert: true },
  { name: 'GitLab', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/gitlab/gitlab-original.svg' },
  // Languages
  { name: 'JavaScript', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg' },
  { name: 'TypeScript', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/typescript/typescript-original.svg' },
  { name: 'Python', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg' },
  { name: 'Java', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg' },
  { name: 'Lua', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/lua/lua-original.svg' },
  // Web Fundamentals
  { name: 'HTML', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg' },
  { name: 'CSS', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg' },
  // Frontend Frameworks
  { name: 'Vue', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vuejs/vuejs-original.svg' },
  { name: 'React', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/react/react-original.svg' },
  { name: 'Angular', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/angularjs/angularjs-original.svg' },
  { name: 'Next.js', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nextjs/nextjs-original.svg' },
  { name: 'RxJS', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rxjs/rxjs-original.svg' },
  { name: 'p5.js', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/p5js/p5js-original.svg' },
  // Runtime & Build Tools
  { name: 'Node.js', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nodejs/nodejs-original.svg' },
  { name: 'Vite', icon: 'https://raw.githubusercontent.com/devicons/devicon/master/icons/vitejs/vitejs-original.svg' },
  // Backend Frameworks
  { name: 'Spring Boot', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/spring/spring-original.svg' },
  // CSS Frameworks
  { name: 'Bootstrap', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bootstrap/bootstrap-original.svg' },
  { name: 'Tailwind CSS', icon: 'https://raw.githubusercontent.com/devicons/devicon/master/icons/tailwindcss/tailwindcss-original.svg' },
  // Database & DevOps
  { name: 'SQL', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/azuresqldatabase/azuresqldatabase-original.svg' },
  { name: 'PostgreSQL', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg' },
  { name: 'Postman', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postman/postman-original.svg' },
  { name: 'Docker', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg' },
  { name: 'Azure VMs', icon: '/icons/virtual-machine-solid-svgrepo-com.svg', invert: true },
  { name: 'Swagger', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/swagger/swagger-original.svg' },
  // Design Tools
  { name: 'Figma', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/figma/figma-original.svg' },
  { name: 'Photoshop', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/photoshop/photoshop-original.svg' },
  { name: 'Illustrator', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/illustrator/illustrator-plain.svg' },
  { name: 'Premiere Pro', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/premierepro/premierepro-original.svg' },
  // CMS & Documentation
  { name: 'WordPress', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/wordpress/wordpress-plain.svg' },
  { name: 'Markdown', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/markdown/markdown-original.svg' },
];
</script>

<template>
  <WelcomeItem>
    <template #icon>
      <BIconShareFill class="bi" />
    </template>
    
    <div class="social-links">
      <a href="mailto:phillipfriispetersen@gmail.com?subject=Website Inquiry" target="_blank" class="social-link" title="Email">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/google/google-original.svg" alt="Email" />
      </a>
      <a href="https://github.com/cloutphilled" target="_blank" class="social-link" title="GitHub">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="GitHub" class="invert" />
      </a>
      <a href="https://instagram.com/clout_philled" target="_blank" class="social-link" title="Instagram">
        <img src="https://www.svgrepo.com/show/452229/instagram-1.svg" alt="Instagram" />
      </a>
      <a href="https://www.linkedin.com/in/phillip-friis-petersen-2184791b2/" target="_blank" class="social-link" title="LinkedIn">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg" alt="LinkedIn" />
      </a>
    </div>
  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <BIconPersonFill class="bi" />
    </template>
    <template #heading>Who Am I?</template>
    <p class="summary-text">
      Systems administrator by day, musician by night. I handle cloud engineering and platform responsibilities. Big fan of PowerShell automation.
    </p>
  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <BIconCodeSquare class="bi" />
    </template>
    <template #heading>Tech Stack</template>
    <div class="toolkit-grid">
      <div v-for="tool in toolkit" :key="tool.name" class="toolkit-item" :title="tool.name">
        <img :src="tool.icon" :alt="tool.name" class="toolkit-icon" :class="{ invert: tool.invert }" />
        <span class="toolkit-name">{{ tool.name }}</span>
      </div>
    </div>
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
.toolkit-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(115px, 1fr));
  gap: 0.75rem;
  margin-top: 0.5rem;
  width: calc(100% + 150px);
}

.toolkit-item {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0.35rem;
  padding: 0.5rem;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 8px;
}

.toolkit-icon {
  width: 36px;
  height: 36px;
  object-fit: contain;
}

.toolkit-icon.invert {
  filter: invert(1);
}

.toolkit-name {
  font-size: 0.8rem;
  font-weight: bold;
  text-align: center;
  color: #aaa;
}

.social-links {
  display: flex;
  gap: 1rem;
  width: calc(100% + 150px);
}

.social-link {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 60px;
  height: 60px;
  border-radius: 8px;
  background: rgba(255, 255, 255, 0.05);
  transition: transform 0.2s, background 0.2s, box-shadow 0.2s;
}

.social-link:hover {
  transform: translateY(-3px);
  background: rgba(255, 255, 255, 0.1);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
}

.social-link img {
  width: 38px;
  height: 38px;
  object-fit: contain;
}

.social-link img.invert {
  filter: invert(1);
}

.summary-text {
  width: calc(100% + 150px);
}
</style>
