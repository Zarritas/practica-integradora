<template>
  <div>
    <h1>Departments</h1>
    <ul v-if="!loading">
      <li v-for="department in departments" :key="department.id">{{ department.name }}</li>
    </ul>
    <div v-else>
      <p>Cargando...</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      departments: [],
      loading: true
    };
  },
  async created() {
    try {
      const response = await fetch('http://172.19.0.4:8080/backend-1/RestApi/departamentos/listado');
      if (!response.ok) {
        throw new Error('Error al obtener los datos de la API');
      }
      this.departments = await response.json();
      this.loading = false;
    } catch (error) {
      console.error('Error fetching departments:', error);
    }
  }
};
</script>

<style>
/* Estilos opcionales */
</style>
