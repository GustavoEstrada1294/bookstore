# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
 

book = Book.create(name: "meditaciones de marco aurelio", price: 90.99)
book2 = Book.create(name: "tlaloc dios de la lluvia", price: 100.00)
book3 = Book.create(name: "derecho constitucional", price: 50.50)

10.times do
    book.sells << Sell.create(quantity: rand(1..15), day: Sell::DAYS[rand(0..(Sell::DAYS.length))])
end

10.times do
    book2.sells << Sell.create(quantity: rand(1..15), day: Sell::DAYS[rand(0..(Sell::DAYS.length))])
end

10.times do
    book3.sells << Sell.create(quantity: rand(1..15), day: Sell::DAYS[rand(0..(Sell::DAYS.length))])
end