# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new
user.email = 'test@example.com'
user.name = "Giulia Martinelli"
user.phone_number = "3450847902"
user.prefix = "+39"
user.password = '#$taawktljasktlw4aaglj'
user.save!

angel = Angel.new
angel.name = "Angel"
angel.user_id = 1
angel.phone_number = "3479927877"
angel.prefix = "+39"
angel.save!
