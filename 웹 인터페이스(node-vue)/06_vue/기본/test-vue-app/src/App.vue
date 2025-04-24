<template>
  <div>
    <h2>App 컴포넌트</h2>
    <CheckboxItem
      v-for="idol in idols"
      :key="idol.id"
      :id="idol.id"
      :label="idol.name"
      v-model="idol.checked"
    />
  </div>
</template>

<script>
import CheckboxItem from './components/CheckboxItem.vue'
export default {
  name: 'App',
  components: {
    CheckboxItem,
  },
  data() {
    return {
      idols: [
        { id: 1, name: 'BTS', checked: true },
        { id: 2, name: 'Black Pink', checked: false },
        { id: 3, name: 'EXO', checked: false },
        { id: 4, name: 'ITZY', checked: false },
      ],
    }
  },
}
</script>
