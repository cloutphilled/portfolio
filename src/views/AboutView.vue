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
        Hi! My name is Phillip. I'm currently a systems administrator/engineer &
        I have a degree in digital concept development. I got into coding during
        my bachelor's degree in "Digital Concept Development". I fell in love
        with it when I saw how the syntax highlighting made keywords change
        color. That really intrigued me because it looked to pretty to me. I
        made a decision that I wanted to have a career in IT.
      </p>
      <br />
      <p>
        In my spare time I love to play music. It's quite the addicting feeling.
        Particually in the world of Hardcore. I'm especially really fond of Emo,
        Post-hardcore, Screamo, Mathcore etc.
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
