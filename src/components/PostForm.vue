<template>
  <form @submit.prevent>
    <h4>Post creation</h4>
    <input
      v-model="post.title"
      class="input"
      type="text"
      placeholder="Title"
    >
    <input
      v-model="post.body"
      class="input"
      type="text"
      placeholder="Description"
    >
    <my-button
      class="btn create-button"
      @click="createPost"
    >
      Create post
    </my-button>
  </form>
</template>

<script>
export default {
  data() {
    return {
      post: {
        title: '',
        body: ''
      }
    }
  },
  methods: {
    createPost() {
      this.post.id = Date.now();
      this.$emit('create', this.post);
      this.post = {
        title: '',
        body: ''
      }
    }
  }
}
</script>

<style scoped>
  form {
    display: flex;
    flex-direction: column;
  }

  .input {
    width: 100%;
    border: 1px solid teal;
    padding: 10px 15px;
    margin-top: 15px;
  }

  .create-button{
    align-self: flex-end;
    margin-top: 15px;
  }
</style>