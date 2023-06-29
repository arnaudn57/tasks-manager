# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding the database..."
Company.create(name: 'Company 1')
User.create(email: 'arnaud.nicastro@gmail.com', password: 'azerty', company_id: 1)
Customer.create(name: 'Customer 1', description: 'Customer 1 description', company_id: 1)
Project.create(name: 'Project 1', customer_id: 1)
Task.create(description: 'Task 1', time: 1, project_id: 1)
puts "Finished seeding the database."
