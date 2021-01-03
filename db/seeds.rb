# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#championship_types = ChampionshipType.create([{ name: 'Prosa', length: 7, min_characters: 3000 }, { name: 'Poesía', length: 7 }])
#Championship.create([{ start_date: Date.today, championship_type: championship_types.first }, { start_date: Date.today + 7, championship_type: championship_types.last }])

group = UserGroup.find_or_create_by(name: 'All Stars')

User.create([
  { email: 'admin@le-championnat.com', user_group: group, password: 'password', password_confirmation: 'password', admin: true, name: 'Admin'},
  { email: 'jlborges@le-championnat.com', user_group: group, password: 'password', password_confirmation: 'password', name: 'Borges'},
  { email: 'hemingway@le-championnat.com', user_group: group, password: 'password', password_confirmation: 'password', name: 'Hemingway'},
  { email: 'celine@le-championnat.com', user_group: group, password: 'password', password_confirmation: 'password', name: 'Céline'},
  { email: 'kawabata@le-championnat.com', user_group: group, password: 'password', password_confirmation: 'password', name: 'Kawabata'},
  { email: 'lorrie@le-championnat.com', user_group: group, password: 'password', password_confirmation: 'password', name: 'Lorrie Moore'},
])

borges = User.find_by(name: 'Borges')
hemingway = User.find_by(name: 'Hemingway')
celine = User.find_by(name: 'Céline')
kawabata = User.find_by(name: 'Kawabata')
lorrie = User.find_by(name: 'Lorrie Moore')

Article.create([
                 { user: borges, title: 'El Aleph', text: 'La candente mañana de febrero en que Beatriz Viterbo murió, después de una imperiosa agonía que no se rebajó un solo instante ni al sentimentalismo ni al miedo, noté que las carteleras de fierro de la Plaza Constitución habían renovado no sé qué aviso de cigarrillos rubios; el hecho me dolió, pues comprendí que el incesante y vasto universo ya se apartaba de ella y que ese cambio era el primero de una serie infinita. Cambiará el universo pero yo no, pensé con melancólica vanidad; alguna vez, lo sé, mi vana devoción la había exasperado; muerta yo podía consagrarme a su memoria, sin esperanza, pero también sin humillación. Consideré que el treinta de abril era su cumpleaños; visitar ese día la casa de la calle Garay para saludar a su padre y a Carlos Argentino Daneri, su primo hermano, era un acto cortés, irreprochable, tal vez ineludible. De nuevo aguardaría en el crepúsculo de la abarrotada salita, de nuevo estudiaría las circunstancias de sus muchos retratos. Beatriz Viterbo, de perfil, en colores; Beatriz, con antifaz, en los carnavales de 1921; la primera comunión de Beatriz; Beatriz, el día de su boda con Roberto Alessandri; Beatriz, poco después del divorcio, en un almuerzo del Club Hípico; Beatriz, en Quilmes, con Delia San Marco Porcel y Carlos Argentino; Beatriz, con el pekinés que le regaló Villegas Haedo; Beatriz, de frente y de tres cuartos, sonriendo, la mano en el mentón… No estaría obligado, como otras veces, a justificar mi presencia con módicas ofrendas de libros: libros cuyas páginas, finalmente, aprendí a cortar, para no comprobar, meses después, que estaban intactos.'}

               ])
