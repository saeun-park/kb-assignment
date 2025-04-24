<template>
  <div class="card card-body">
    <h2>404 Not Found</h2>
  </div>
</template>

<script>
export default {
  name: 'NotFound',
  created() {
    console.log(this.$route.params);
  },
};
</script>
