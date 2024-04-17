<template>
 <div class="flex justify-center bg-gray-800 py-4">
    <div class="flex space-x-4 text-white">
      <NuxtLink to="/" class="hover:text-gray-300">អ្នកជំងឺបណ្ណសមធម៌</NuxtLink>
      <NuxtLink to="/contact" class="hover:text-gray-300">អ្នកជំងឺបណ្ណសម្គាល់គ្រួសារងាយរងហានិភ័យ
      </NuxtLink>
      <NuxtLink to="/posts/1" class="hover:text-gray-300">ចុះឈ្មោះចូលប្រើប្រាស់សេវា
      </NuxtLink>
      <NuxtLink to="/posts/2" class="hover:text-gray-300">ស្វែងរកបណ្ណ
      </NuxtLink>
    </div>
  </div>
  <div class="mt-5">
    <router-view />
  </div>
</template>
<script>
  export default {
    // Your component logic goes here
  }
</script>

