# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

3.times do |index|
  user = User.create(name: "test_user_#{index+1}", email: "test_user_#{index+1}@example.com", password: "password_#{index+1}")
  user.savings.create(label: "test_label_#{user.id}", money: 1000)
end

