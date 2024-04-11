<template>
 <div class="flex justify-center bg-gray-800 py-4">
    <div class="flex space-x-4 text-white">
      <NuxtLink to="/" class="hover:text-gray-300">Home</NuxtLink>
      <NuxtLink to="/contact" class="hover:text-gray-300">Contact</NuxtLink>
      <NuxtLink to="/posts/1" class="hover:text-gray-300">Post 1</NuxtLink>
      <NuxtLink to="/posts/2" class="hover:text-gray-300">Post 2</NuxtLink>
    </div>
  </div>
  <div class="text-center">
    <router-view />
  </div>
</template>

<script>
export default {
  // Your component logic goes here
}
</script>

