<template>
  <div class="w-[60%] m-auto mt-2">
    <div  v-if="isLoading"><spinner /></div>
    <npcaTable v-else :npcaDataApi="npcaData.record.members" />
  </div>
</template>

<script setup>
    import { ref } from 'vue';
    import npcaTable from '~/components/table.vue';
    import spinner from '~/components/spinner.vue';

    definePageMeta({
      layout: 'npcaData'
    });

    const isLoading = ref(true);
    const { data: npcaData } = await useFetch('https://api.jsonbin.io/v3/b/661799b0e41b4d34e4e281f1');
    isLoading.value = false;
</script>
