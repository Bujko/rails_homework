# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create name: "a", email: "a@a.hu", password: 'a', usertype: 0

User.create name: "b", email: "b@b.hu", password: 'b', usertype: 1

for i in 1..5
    Cloth.create user_id: 1, picture: "Ruhakep#{i}"
end

for i in 1..5
    Shoe.create user_id: 1, picture: "Cipokep#{i}"
end

for i in 1..5
    Trouser.create user_id: 1, picture: "Nadragkep#{i}"
end
