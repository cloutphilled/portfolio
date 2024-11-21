<template>
    <div class="about">
      <section>
        <p><a href="https://pfp-spotify-clone.netlify.app" target="_blank">Spotify Clone</a> - this clone was made with Vue. Pinia is used for state management. Vue-material-icons, uniqolor and tailwindCSS were all used for styling. The music featured in the app are from my two bands, 'Telos' & 'Regarding Ambiguity'.</p>
        <br/>
        <p><a href="https://main--snazzy-baklava-a86072.netlify.app/" target="_blank">Documentation site</a> - I created this documentation site during my employment as IT-support in Frederiksberg municipality. The different guides were spread out on different shared drives, so I wanted to collect all of them in one place. Created with VitePress and Front Matter. Never finished this project since I stopped being emlpoyed at Frederiksberg municipality July 2023.</p>
        <br/>
        <p><a href="https://semmler-case.netlify.app" target="_blank">SEMMLER interview case</a> - an HTML & CSS case from a frontend interview with the danish car import company: SEMLER. I did get the job, but they unfortunately pulled out the deal due to their only frontend employee's medical leave. It was a pretty heavy blow to my self-esteem since the agreement had to be shut down.</p>
        <br/>
        <p><a href="https://cloutphilled.github.io" target="_blank">TELOS</a> - my first coding project (vanilla JS) was part of my bachelor thesis. This was meant to be a creative expression that should resemble my band 'TELOS'. I wanted the UX-design to be an interactive expression of the bands music. So that means the design had to not user friendly at all, since the music isn't.</p>
        <br/>
        <p><a href="https://javascript-komputer-store.netlify.app" target="_blank">KomputerStore</a> - another project made with vanilla JS. (The API was hosted on Heroku, so I need to find another place to host the API.) </p>
        <br/>
        <p><a href="https://angular-pokemon-app.netlify.app/" target="_blank">Angular Pokemon App</a> - an app created with the Angular framework. Some of the features are missing due to the API handling user data was hosted on Heroku. So I need to find another place to host it. </p>
        <br/>
        <p>More to be added...</p>
      </section>
    </div>
</template>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}

.column {
  float: left;
  width: 50%;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

.logo {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>
