<template>
  <div id="formulario">
    <div v-if="edit">
      <UpdateCarrera :carrera="updatecarrera" />
    </div>
    <div v-else>
      <CreateCarrera />
    </div>
  </div>
</template>

<script>
import UpdateCarrera from "../components/UpdateCarrera.vue";
import CreateCarrera from "../components/CreateCarrera.vue";

export default {
  name: "crearCarrera",
  props: ["updatecarrera", "edit"],
  components: {
    UpdateCarrera,
    CreateCarrera,
  },
};
</script>

<style>
#crearCarrera,
#actualizarCarrera {
  margin: 0 auto;
  padding: 20px;
  margin-top: 50px;
  /* border: 1px solid black;
  height: 100vh; */
}
#crearCarrera h2,
#actualizarCarrera h2 {
  text-align: center;
  text-transform: uppercase;
  color: rgb(105, 3, 201);
  font-weight: bold;
}
#crearCarrera .alert,
#actualizarCarrera .alert {
  width: 75%;
  margin: 0px auto;
  text-align: center;
}
#crearCarrera button,
#actualizarCarrera button {
  background-color: rgb(105, 3, 201);
  color: white;
}
#crearCarrera button:hover,
#actualizarCarrera button:hover {
  background-color: transparent;
  color: rgb(105, 3, 201);
  border: 1px solid rgb(105, 3, 201);
  text-shadow: 2px 2px 5px #ccc;
}
@media (min-width: 1000px) {
  #crearCarrera form,
  #actualizarCarrera form {
    width: 75%;
    margin: 0 auto;
  }
}
</style>
