<template>
  <div id="crearCarrera">
    <h2>Rellena el formulario para crear una carrera</h2>
    <div v-if="this.mensaje" class="alert alert-success" role="alert">
      {{ mensaje }}
    </div>
    <form @submit.prevent="createCarrera" class="row g-3">
      <div class="col-md-6">
        <label for="inputEmail4" class="form-label">Tipo *</label>
        <input
          type="text"
          v-model="carrera.tipo"
          class="form-control"
          required
        />
      </div>
      <div class="col-md-6">
        <label for="inputPassword4" class="form-label">Categoría *</label>
        <input
          type="text"
          v-model="carrera.categoria"
          class="form-control"
          required
        />
      </div>
      <div class="col-12">
        <label for="inputAddress" class="form-label"
          >Entradas disponibles *</label
        >
        <input
          type="number"
          class="form-control"
          min="0"
          max="9999999999"
          required
          v-model="carrera.entradas"
          placeholder="¿Cuántas entradas van a venderse para asistir a tu carrera?"
        />
      </div>
      <div class="col-md-6">
        <label for="inputCity" class="form-label">Ciudad *</label>
        <input
          type="text"
          class="form-control"
          v-model="carrera.ciudad"
          value="{updatecarrera.ciudad}"
          required
        />
      </div>
      <div class="col-md-4">
        <label for="inputState" class="form-label">Circuito *</label>
        <input
          type="text"
          class="form-control"
          v-model="carrera.circuito"
          required
        />
      </div>
      <div class="col-md-2">
        <label for="inputZip" class="form-label">Fecha *</label>
        <input
          type="date"
          v-model="carrera.fecha"
          class="form-control"
          value="{updatecarrera.fecha}"
          required
        />
      </div>
      <div class="col-12">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" id="gridCheck" />
          <label class="form-check-label" for="gridCheck">
            Aceptar Términos Condiciones *
          </label>
        </div>
      </div>
      <div class="col-12">
        <button type="submit" class="btn">
          Añadir carrera nueva
        </button>
      </div>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "create-carrera",
  data() {
    return {
      carrera: {
        tipo: "",
        categoria: "",
        entradas: "",
        ciudad: "",
        circuito: "",
        fecha: "",
      },
      mensaje: "",
    };
  },
  methods: {
    async createCarrera() {
      await axios
        .post("http://localhost:8000/api/carreras/", this.carrera)
        .then((response) => (this.mensaje = response.data.message));
      this.carrera = "";
    },
  },
};
</script>

<style></style>
