<template>
  <div id="header">
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container">
        <a class="navbar-brand" href="/">Competiciones</a>
        <button
          class="navbar-toggler collapsed"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <!-- <span class="navbar-toggler-icon"></span> -->
          <span class="toggler-icon top-bar"></span>
          <span class="toggler-icon middle-bar"></span>
          <span class="toggler-icon bottom-bar"></span>
        </button>
        <div
          class="collapse navbar-collapse justify-content-end"
          id="navbarNav"
        >
          <ul class="navbar-nav">
            <li class="nav-item">
              <Router-link to="/home" class="nav-link">Inicio</Router-link>
            </li>
            <li class="nav-item">
              <Router-link to="/crear-carrera" class="nav-link"
                >Crear Carrera</Router-link
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
</template>

<script>
export default {
  name: "Header",
};
</script>

<style scoped>
nav {
  background-color: rgb(105, 3, 201);
}
ul li a {
  color: orange !important;
  font-weight: bold;
  padding: 0px;
  margin: 5px;
}
.navbar-brand {
  color: orange;
  font-weight: bold;
}
.navbar-brand:hover {
  color: orange;
}
.router-link-active {
  border-bottom: 3px solid orange;
}
/* ---- Animación del burguer menu ---- */
.navbar-toggler {
  border: 0;
}

.navbar-toggler:focus,
.navbar-toggler:active,
.navbar-toggler-icon:focus {
  outline: none;
  box-shadow: none;
  border: 0;
}

/* Lines of the Toggler */
.toggler-icon {
  width: 30px;
  height: 3px;
  /* background-color: #777; */
  background-color: orange;

  display: block;
  transition: all 0.2s;
}

/* Adds Space between the lines */
.middle-bar {
  margin: 5px auto;
}

/* State when navbar is opened (START) */
.navbar-toggler .top-bar {
  transform: rotate(45deg);
  transform-origin: 10% 10%;
}

.navbar-toggler .middle-bar {
  opacity: 0;
  filter: alpha(opacity=0);
}

.navbar-toggler .bottom-bar {
  transform: rotate(-45deg);
  transform-origin: 10% 90%;
}
/* State when navbar is opened (END) */

/* State when navbar is collapsed (START) */
.navbar-toggler.collapsed .top-bar {
  transform: rotate(0);
}

.navbar-toggler.collapsed .middle-bar {
  opacity: 1;
  filter: alpha(opacity=100);
}

.navbar-toggler.collapsed .bottom-bar {
  transform: rotate(0);
}
/* State when navbar is collapsed (END) */

/* Color of Toggler when collapsed */
.navbar-toggler.collapsed .toggler-icon {
  /* background-color: #777777; */
  background-color: orange;
}
</style>
