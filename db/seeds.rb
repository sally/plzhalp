# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

phase1 = Phase.create(number: 1)
phase2 = Phase.create(number: 2)
phase3 = Phase.create(number: 3)

a = User.create(email: 'a@a.a', password: 'aaaaaa', password_confirmation: 'aaaaaa', first_name: 'a', last_name: 'a', role: 'mentor')

m = Mentor.create(user: a)

b = User.create(email: 'b@b.b', password: 'bbbbbb', password_confirmation: 'bbbbbb', first_name: 'b', last_name: 'b', role: 'student')

s = Student.create(user:b, phase:phase2)