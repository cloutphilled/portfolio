<template>
  <div class="about">
    <section>
      <img
        alt="Telos playing at ILTER Festival in 2022"
        class="logo"
        src="@/assets/Telos_Ilter_RM-21.jpg"
        height="350"
        loading="eager"
      />
      <p>
        Hi! My name is Phillip. I'm a full stack software developer & digital
        concept developer with a big passion for music. I got into coding during
        my bachelor's degree in "Digital Concept Development". I really like to
        code and find it incredibly satisfying. I really like that there's two
        sides of it. One seems to focus on order and structure, while the other
        can be insanely creative. I find it beautiful to see creativity being
        expressed in logic designs.
      </p>
      <br />
      <p>
        I get the same feeling whenever I'm playing music. It's quite the
        addicting feeling. In terms of coding I'm especially passionate about
        front-end development. I always feel very proud of myself whenever I'm
        able to create something that looks cool and feels amazing to use.
      </p>
      <br />
      <p>Check out my bands here:</p>
      <br />
      <div class="row">
        <div class="column">
          <b>TELOS</b>
          <br />
          <a href="https://telosband.bandcamp.com/" target="_blank">Bandcamp</a>
          <br />
          <a href="https://www.instagram.com/telosband/" target="_blank"
            >Instagram</a
          >
          <br />
          <a
            href="https://open.spotify.com/artist/5MNU39WnT8c59UQ3mGmQtp?si=NiGhBoqsQXiA3mcezwxcOg"
            target="_blank"
            >Spotify</a
          >
          <br />
        </div>
        <div class="column">
          <b>Regarding Ambiguity</b>
          <br />
          <a href="https://regardingambiguity.bandcamp.com/" target="_blank"
            >Bandcamp</a>
          <br />
          <a
            href="https://www.instagram.com/regardingambiguity/"
            target="_blank"
            >Instagram</a
          >
          <br />
          <a
            href="https://open.spotify.com/artist/3oDCi1wR5W4SnWzCu3qpLc?si=qUTGIyWQT6aNIYDOq2oyig"
            target="_blank"
            >Spotify</a
          >
    </div>
    </div>
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
  width: 100%;
  height: auto;
}
</style>
