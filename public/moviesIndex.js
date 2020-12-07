/* global Vue */
/* global axios */

new Vue({
  el: "#app",
  data() {
    return {
      movies: null,
    };
  },
  created: function () {
    axios.get("http://localhost:3000/api/movies").then((response) => (this.movies = response));
  },
});
