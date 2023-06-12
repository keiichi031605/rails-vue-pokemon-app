# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('pokemon.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  japanese_name = row['japanese_name'].force_encoding('UTF-8').scan(/[a-zA-Z0-9\s]+|[\u{30A0}-\u{30FF}]+/)[-1]

  pokemon = Pokemon.create(
    classfication: row['classfication'],
    name: row['name'],
    japanese_name: japanese_name,
    base_total: row['base_total'].to_i,
    hp: row['hp'].to_i,
    attack: row['attack'].to_i,
    defense: row['defense'].to_i,
    special_attack: row['special_attack'].to_i,
    special_defense: row['special_defense'].to_i,
    speed: row['speed'].to_i,
    type1: row['type1'],
    type2: row['type2'],
    abilities: eval(row['abilities']),
    against_bug: row['against_bug'].to_f,
    against_dark: row['against_dark'].to_f,
    against_dragon: row['against_dragon'].to_f,
    against_electric: row['against_electric'].to_f,
    against_fairy: row['against_fairy'].to_f,
    against_fight: row['against_fight'].to_f,
    against_fire: row['against_fire'].to_f,
    against_flying: row['against_flying'].to_f,
    against_ghost: row['against_ghost'].to_f,
    against_grass: row['against_grass'].to_f,
    against_ground: row['against_ground'].to_f,
    against_ice: row['against_ice'].to_f,
    against_normal: row['against_normal'].to_f,
    against_poison: row['against_poison'].to_f,
    against_psychic: row['against_psychic'].to_f,
    against_rock: row['against_rock'].to_f,
    against_steel: row['against_steel'].to_f,
    against_water: row['against_water'].to_f,
  )
  puts "#{pokemon.name}, saved"
rescue => e
  puts "There was an error: #{e}"
end
