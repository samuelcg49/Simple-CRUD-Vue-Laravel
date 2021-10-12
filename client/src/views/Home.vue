<template>
  <div id="home">
    <h2>Carreras disponibles actualmente:</h2>
    <div
      v-if="this.mensaje"
      class="alert alert-success alert-dismissible fade show"
      role="alert"
    >
      {{ mensaje }}
      <button
        type="button"
        class="btn-close"
        data-bs-dismiss="alert"
        aria-label="Close"
      ></button>
    </div>
    <br />
    <div id="carreras">
      <ul v-for="carrera in carreras" :key="carrera.id">
        <li><span>Fecha: </span>{{ carrera.fecha }}</li>
        <li><span>Tipo: </span>{{ carrera.tipo }}</li>
        <li><span>Categoria:</span> {{ carrera.categoria }}</li>
        <li>
          <span>Entradas disponibles: </span>
          <span class="green" v-if="carrera.entradas >= 100">{{
            carrera.entradas
          }}</span>
          <span class="red" v-else>¡ {{ carrera.entradas }} PLAZAS !</span>
        </li>
        <li><span>Circuito:</span> {{ carrera.circuito }}</li>
        <li><span>Ciudad: </span>{{ carrera.ciudad }}</li>
        <button @click="deleteCarrera(carrera.id)" class="btn btn-danger">
          <font-awesome-icon icon="trash-alt" />
        </button>
        <Router-Link
          :to="{
            name: 'updatecarrera',
            params: { updatecarrera: carrera, edit: true },
          }"
          class="btn btn-warning"
        >
          <font-awesome-icon icon="edit" class="text-white" />
        </Router-Link>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Home",
  created() {
    //Se ejecuta cuando se crea el componente
    this.getCompeticiones();
  },
  data() {
    return {
      carreras: [],
      mensaje: "",
    };
  },
  methods: {
    async getCompeticiones() {
      await axios
        .get("http://localhost:8000/api/carreras")
        .then((response) => (this.carreras = response.data));
    },
    async deleteCarrera(id) {
      var opcion = confirm("¿Estás seguro que deseas borrar la carrera?");

      if (opcion == true) {
        await axios
          .delete("http://localhost:8000/api/carreras/" + id)
          .then((response) => (this.mensaje = response.data.message));
      }
      await this.getCompeticiones();
    },
  },
};
</script>

<style scoped>
* {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
    Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
}
#home {
  margin: 0 auto;
  padding: 20px;
  width: 96%;
  margin-top: 50px;
}
h2 {
  text-align: center;
  text-transform: uppercase;
  color: rgb(105, 3, 201);
  font-weight: bold;
}
#carreras {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
}
ul {
  border: 2px solid orange;
  background-color: rgb(105, 3, 201);
  color: white;
  font-weight: bold;
  margin: 20px;
  padding: 25px;
  list-style-type: none;
}
.btn {
  float: right;
  margin: 5px;
  line-height: 27px;
  width: 45px;
}
.alert {
  width: 96%;
  margin: 0px auto;
  text-align: center;
}
span {
  color: orange;
}
span.green {
  color: rgb(20, 211, 20);
}
span.red {
  color: rgb(248, 70, 70);
}
@media (max-width: 1000px) {
  #carreras {
    grid-template-columns: 1fr 1fr;
  }
  #home {
    width: 100%;
  }
}
@media (max-width: 700px) {
  #carreras {
    grid-template-columns: 1fr;
  }
}
</style>
