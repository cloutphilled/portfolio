<template>
    <div class="about">
      <section>
        <p><a href="" target="_blank">SEMMLER interview case</a> - A case from a front-end interview with the danish car import company: SEMMLER.</p>
        <p><a href="https://cloutphilled.github.io" target="_blank">TELOS</a> - my first coding project (vanilla JS) was part of my bachelor thesis.</p>
        <p><a href="https://javascript-komputer-store.netlify.app" target="_blank">KomputerStore</a> - another project made with vanilla JS. (The API seems to be invalid currently) </p>
        <p><a href="https://angular-pokemon-app.netlify.app/" target="_blank">Angular Pokemon App</a> - an app created with the Angular framework. Some of the features are missing due to the API handling user data is currently unavailable. </p>
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
