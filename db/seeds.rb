# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

admin = User.new
admin.email = 'admin@kn.com'
admin.password = 'password'
admin.password_confirmation = 'password'
admin.admin = true
admin.skip_confirmation!
admin.save!

client = User.new
client.email = 'client@kn.com'
client.password = 'password'
client.password_confirmation = 'password'
client.admin = false
client.skip_confirmation!
client.save!

20.times do
  Product.create( name: Faker::Food.fruits,
                  description: Faker::Food.description,
                  price: 3.2,
                  category: "Patisserie" )
end
