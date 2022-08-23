# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: 'inambaig1', password: "password")
User.create(username: 'inambaig2', password: "password")
User.create(username: 'inambaig3', password: "password")
User.create(username: 'inambaig4', password: "password")
User.create(username: 'inambaig5', password: "password")
User.create(username: 'inambaig6', password: "password")
Message.create(body: "I am a new message", user: User.last)
Message.create(body: "Posted by first user", user: User.first)
