<template>
  <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
      <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
        <tr>
          <th scope="col" class="px-6 py-3">លេខសម្គាល់</th>
          <th scope="col" class="px-6 py-3">ឈ្នោះ</th>
          <th scope="col" class="px-6 py-3">ភេទ</th>
          <th scope="col" class="px-6 py-3">ស្ដានភាព</th>
          <th scope="col" class="px-6 py-3">ថ្ងៃខែឆ្នាំកំណើត</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="data in npcaDataApi" class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
          <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
             00{{ data.code }}
          </th>
          <td class="px-6 py-4">
            {{ data.name }}
          </td>
          <td class="px-6 py-4">
            {{ data.sex ==='M' ? "ប្រុស" : "ស្រី" }}
          </td>
          <td class="px-6 py-4">
            {{ data.memberStatus ? "សម្រាក់នៅមន្ទីពេទ្យ" : "បានចេញពីរពេទ្យហើយ" }}
          </td>
          <td class="px-6 py-4">
            {{ data.dob }}
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>
<script>
  export default {
    props: {
      npcaDataApi: {
        type: Array,
      },
    },
  };
</script>
