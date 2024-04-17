<template>
  <div class="w-[60%] m-auto mt-2">
    <div v-if="isLoading"><spinner /></div>
    <npcaTable v-else :npcaDataApi="responseData" />
  </div>
</template>

<script>
import { callApi } from "@/utils/api";
import npcaTable from "@/components/table"
import home from "@/static/home.json"

export default {
  components: {
    npcaTable
  },
  data() {
    return {
      isLoading: false,
      responseData: home.members,
      error: null,
    };
  },
  async created() {
    try {
      const responseData = await callApi(
        "https://api.jsonbin.io/v3/b/661799b0e41b4d34e4e281f1"
      );
      this.responseData = responseData.record.members;
    } catch (error) {
      console.error("Error calling API:", error);
      this.error = error;
    } finally {
      this.isLoading = false;
    }
  },
};
</script>
