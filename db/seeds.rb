# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Establishment.create!(title: "Imperiya Pizzy", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. At a hic, minus, rerum quo pariatur placeat, ea culpa tenetur id voluptate assumenda explicabo. Soluta facere vitae optio eveniet neque rerum!")
Establishment.create!(title: "Nagi Maki", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat animi delectus cupiditate! Voluptatibus rerum labore, unde, totam, quas illum odio praesentium sit minima delectus ipsa voluptas, provident aperiam iure obcaecati. ")
Establishment.create!(title: "Coffee", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui recusandae eum ut, ipsum! Incidunt aliquid velit nobis iure unde eum excepturi nihil fugit quam tempora dolore, amet, consequatur beatae modi.")
Establishment.create!(title: "Dostuk", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima blanditiis odit, sit minus voluptatem rem, atque quod amet esse nisi sunt assumenda corporis praesentium recusandae consectetur facilis eveniet error unde?")

Category.create!(title: "cat1", establishment_id: 7)
Category.create!(title: "cat2", establishment_id: 6)
Category.create!(title: "cat3", establishment_id: 9)
Category.create!(title: "cat4", establishment_id: 7)
Category.create!(title: "cat5", establishment_id: 8)
Category.create!(title: "cat6", establishment_id: 9)
Category.create!(title: "cat7", establishment_id: 8)

Dish.create!(title: "dish1", price: 130, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos, tenetur porro dicta praesentium ipsum repudiandae id quaerat reiciendis saepe quo reprehenderit facilis voluptatum velit suscipit quis animi adipisci! Autem, consequuntur.", category: 10)
Dish.create!(title: "dish2", price: 80,  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga perferendis ab quos, dolores, dolorum odio sunt. Porro ut sit quam quod minima, excepturi repellendus ratione magni ea, quis, omnis provident!", category: 13)
Dish.create!(title: "dish3", price: 75,  description: "Какое нибудь вкусное мороженое", category: 16)
Dish.create!(title: "dish4",   price: 100, description: "wfsdfsdf wef wfvwevweeww", category: 13)
Dish.create!(title: "dish4", price: 100,  description: "tumynynynynyw ynwr n wry nwnr", category: 11)
Dish.create!(title: "dish6-кола", price: 100,  description: "trtrbtwr wrnr wnwrn rw n", category: 10)
Dish.create!(title: "dish7", price: 100,  description: "rn rnrwn wr rwrwynwrynrywn", category: 15)
Dish.create!(title: "dish8", price: 100,   description: "nwyrnrywnwrynwrynwrywn yrnwrn", category: 14)
Dish.create!(title: "dish9", price: 100,  description: "Мrnrwynwyrnrywnrwynrynnrwе", category: 13)

