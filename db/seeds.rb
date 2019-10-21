# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

championship_types = ChampionshipType.create([{ name: 'Prosa', length: 7, min_characters: 3000 }, { name: 'Poesía', length: 7 }])
Championship.create([{ start_date: Date.today, championship_type: championship_types.first }, { start_date: Date.today + 7, championship_type: championship_types.last }])