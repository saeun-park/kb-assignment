<template>
  <div><input type="checkbox" />옵션1</div>
</template>

<script>
export default {
  name: 'CheckboxItem',
  props: {
    id: [Number, String],
    name: { type: String },
    checked: {
      type: Boolean,
      default: false,
      required: false,
    },
  },
}
</script>
