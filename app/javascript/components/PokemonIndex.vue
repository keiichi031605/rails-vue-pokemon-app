<template>
  <v-container class="mt-5">
    <v-simple-table>
      <template v-slot:default>
        <thead>
          <tr>
            <th class="text-left">
              Id
            </th>
            <th class="text-left">
              Name
            </th>
          </tr>
        </thead>
        <tbody>
          <tr
            v-for="item in pokemons"
            :key="item.id"
          >
            <td>{{ item.id }}</td>
            <td>{{ item.name }}</td>
          </tr>
        </tbody>
      </template>
    </v-simple-table>
  </v-container>
</template>

<script>
export default {
  name: 'PokemonIndex',
  props: {
    pokemons: {
      type: Array,
      default: () => []
    }
  }
}
</script>
