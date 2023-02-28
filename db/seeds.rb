# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  email: 'test@test.com',
  encrypted_password: 'test1111',
)

Sweet.create!(
  name: 'テストスイーツ',
  description: 'testtest',
  user_id: User.find(1).id
)