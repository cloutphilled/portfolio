<template>
  <div class="about">
    <section>
      <div class="projects-grid">
        <a 
          v-for="project in projects" 
          :key="project.slug"
          :href="`/projects/${project.slug}/`"
          class="project-card"
        >
          <div class="project-icon">
            <img v-if="project.iconImg" :src="project.iconImg" alt="" class="icon-img" />
            <span v-else>{{  project.icon }}</span>
          </div>
          <h2>{{ project.name }}</h2>
          <div class="tech-icons">
            <img v-for="tech in project.techStack" :key="tech" :src="techIcons[tech]" :alt="tech" :title="tech" class="tech-icon" />
          </div>
          <p class="description">{{ project.description }}</p>
        </a>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
interface Project {
  slug: string;
  name: string;
  techStack: string[];
  icon?: string;
  iconImg?: string;
  description: string;
}

const techIcons: Record<string, string> = {
  'HTML': 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg',
  'CSS': 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg',
  'JavaScript': 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg',
  'TypeScript': 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/typescript/typescript-original.svg',
  'Vue': 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vuejs/vuejs-original.svg',
  'Angular': 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/angularjs/angularjs-original.svg',
  'Bootstrap': 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bootstrap/bootstrap-original.svg',
  'TailwindCSS': 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/tailwindcss/tailwindcss-original.svg',
  'p5.js': 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/p5js/p5js-original.svg',
  'VitePress': 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/vitejs/vitejs-original.svg',
  'Markdown': 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/markdown/markdown-original.svg',
  'RxJS': 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/rxjs/rxjs-original.svg',
};

const projects: Project[] = [
  {
    slug: 'full-of-noise',
    name: 'Full of Noise',
    techStack: ['HTML', 'CSS', 'JavaScript'],
    iconImg: new URL('@/assets/a0598543727_10-removebg-preview.png', import.meta.url).href,
    description: 'A music player for my releases with TELOS & Regarding Ambiguity.'
  },
  {
    slug: 'telos',
    name: 'TELOS',
    techStack: ['HTML', 'CSS', 'JavaScript', 'p5.js'],
    iconImg: new URL('@/assets/telos_moon2_white.png', import.meta.url).href,
    description: 'My first coding project - an interactive creative expression for my band TELOS.'
  },
  {
    slug: 'it-support-docs',
    name: 'IT Support Documentation',
    techStack: ['VitePress', 'Vue', 'Markdown'],
    iconImg: new URL('@/assets/frederiksberg_kommune_coa.svg', import.meta.url).href,
    description: 'Documentation site created during my IT-support role at Frederiksberg municipality.'
  },
  {
    slug: 'semmler-frontend',
    name: 'SEMLER Interview Case',
    techStack: ['HTML', 'CSS'],
    iconImg: new URL('@/assets/semler-gruppen-vector-logo.svg', import.meta.url).href,
    description: 'Frontend case from an interview with the Danish car import company SEMLER.'
  },
  {
    slug: 'angular-pokemon-app',
    name: 'Pokemon Trainer App',
    techStack: ['Angular', 'TypeScript', 'Bootstrap', 'TailwindCSS', 'RxJS'],
    iconImg: new URL('@/assets/pokeball.gif', import.meta.url).href,
    description: 'A Pokemon trainer app built with Angular.'
  }
];
</script>

<style>
.project-card {
  display: grid;
  grid-template-rows: 120px 3.5rem auto 1fr;
  gap: 0.5rem;
  padding: 1.5rem;
  border: 1px solid #444;
  border-radius: 12px;
  text-decoration: none;
  color: inherit;
  transition: transform 0.2s, border-color 0.2s, box-shadow 0.2s;
  background: #2a2a2a;
  text-align: center;
  height: 100%;
}

.project-card:hover {
  transform: translateY(-4px);
  border-color: #646cff;
  box-shadow: 0 8px 24px rgba(100, 108, 255, 0.15);
}

.project-icon {
  display: flex;
  justify-content: center;
  align-items: flex-end;
}

.project-card h2 {
  font-size: 1.25rem;
  margin: 0;
  display: flex;
  align-items: center;
  justify-content: center;
}

.tech-icons {
  display: flex;
  justify-content: center;
  gap: 0.5rem;
  margin-bottom: 0.75rem;
  width: 100%;
}

.tech-icon {
  width: 24px;
  height: 24px;
  object-fit: contain;
}

.project-card .description {
  font-size: 0.9rem;
  color: #aaa;
  line-height: 1.5;
  flex-grow: 1;
}

.icon-img {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
}
</style>
