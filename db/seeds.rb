# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Email.create! object: "fisrt mail try unread", body: "this is the content of the first email"
Email.create! object: "Second email", body: "This email is already read normally", read: true
Email.create! object: "Third email test", body: "jeej"
