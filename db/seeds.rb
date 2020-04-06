# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#championship_types = ChampionshipType.create([{ name: 'Prosa', length: 7, min_characters: 3000 }, { name: 'Poesía', length: 7 }])
#Championship.create([{ start_date: Date.today, championship_type: championship_types.first }, { start_date: Date.today + 7, championship_type: championship_types.last }])

group = UserGroup.find_by(name: 'Desastre Anunciado')
User.create(email: 'julietamortati@gmail.com', user_group: group, password: '123456', password_confirmation: '123456', name: 'Juli')
#User.create([{ email: 'magalietchebarne@gmail.com', user_group: group, password: '123456', password_confirmation: '123456', name: 'Maga'},
#             { email: 'lamarieva@gmail.com', user_group: group, password: '123456', password_confirmation: '123456', name: 'Evi'},
#             { email: 'rafaelotegui@gmail.com', user_group: group, password: '123456', password_confirmation: '123456', name: 'Rafa'},
#             { email: 'llovia@gmail.com', user_group: group, password: '123456', password_confirmation: '123456', admin: true, name: 'Eiti'},
#             { email: 'jpoquelin@gmail.com', user_group: group, password: '123456', password_confirmation: '123456', name: 'Dam'},
#             { email: 'sgarciauldry@gmail.com', user_group: group, password: '123456', password_confirmation: '123456', name: 'Seba'},
#             { email: 'majomoiron@gmail.com', user_group: group, password: '123456', password_confirmation: '123456', name: 'Majo'},
#             { email: 'lautaro.lamisovski@gmail.com', user_group: group, password: '123456', password_confirmation: '123456', name: 'Lauti'},
#             { email: 'santiago.llach@gmail.com', user_group: group, password: '123456', password_confirmation: '123456', name: 'Santi'},
#             { email: 'pablo_ottonello@yahoo.com.ar', user_group: group, password: '123456', password_confirmation: '123456', name: 'Otto'},
#])
