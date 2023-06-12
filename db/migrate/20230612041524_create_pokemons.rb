class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :classfication
      t.string :name
      t.string :japanese_name
      t.integer :base_total
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :special_attack
      t.integer :special_defense
      t.integer :speed
      t.string :type1
      t.string :type2
      t.string :abilities, array: true, default: []
      t.decimal :against_bug
      t.decimal :against_dark
      t.decimal :against_dragon
      t.decimal :against_electric
      t.decimal :against_fairy
      t.decimal :against_fight
      t.decimal :against_fire
      t.decimal :against_flying
      t.decimal :against_ghost
      t.decimal :against_grass
      t.decimal :against_ground
      t.decimal :against_ice
      t.decimal :against_normal
      t.decimal :against_poison
      t.decimal :against_psychic
      t.decimal :against_rock
      t.decimal :against_steel
      t.decimal :against_water
      t.timestamps
    end
  end
end
