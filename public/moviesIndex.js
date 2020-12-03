/* global Vue */
/* global axios */
new Vue({
  el: "#app",
  data() {
    return {
      movies: null,
    };
  },
  mounted() {
    axios.get("https://localhost:3000/api/movies").then((response) => (this.movies = response));
  },
});
