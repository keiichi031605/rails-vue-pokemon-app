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
            <th class="text-left">
              Type 1
            </th>
            <th class="text-left">
              Type 2
            </th>
            <th class="text-left">
              HP
            </th>
            <th class="text-left">
              Attack
            </th>
            <th class="text-left">
              Defense
            </th>
            <th class="text-left">
              Special Attack
            </th>
            <th class="text-left">
              Special Defense
            </th>
            <th class="text-left">
              Speed
            </th>
            <th class="text-left">
              Base Total
            </th>
          </tr>
        </thead>
        <tbody>
          <tr
            v-for="item in pokemons"
            :key="item.id"
          >
            <td>{{ item.id }}</td>
            <td>{{ `${item.name} (${item.japanese_name})` }}</td>
            <td>{{ item.type1 }}</td>
            <td>{{ item.type2 }}</td>
            <td>{{ item.hp }}</td>
            <td>{{ item.attack }}</td>
            <td>{{ item.defense }}</td>
            <td>{{ item.special_attack }}</td>
            <td>{{ item.special_defense }}</td>
            <td>{{ item.speed }}</td>
            <td>{{ item.base_total }}</td>
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
