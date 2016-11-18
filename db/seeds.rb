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

phase1topics = [
  Topic.create(name: "Git and GitHub Workflow", phase: phase1),
  Topic.create(name: "Enumerables", phase: phase1),
  Topic.create(name: "Recursion", phase: phase1),
  Topic.create(name: "Class Inheritance and Modules", phase: phase1),
  Topic.create(name: "SQL", phase: phase1),
  Topic.create(name: "ActiveRecord Basics", phase: phase1)
]

phase2topics = [
  Topic.create(name: "ActiveRecord Associations", phase: phase2),
  Topic.create(name: "CRUD/RESTful Routes", phase: phase2),
  Topic.create(name: "User Authentication", phase: phase2),
  Topic.create(name: "JavaScript and jQuery", phase: phase2),
  Topic.create(name: "AJAX", phase: phase2),
  Topic.create(name: "APIs", phase: phase3)
]

phase3topics = [
  Topic.create(name: "Rails Setup", phase: phase3),
  Topic.create(name: "Rails Routing", phase: phase3),
  Topic.create(name: "Rails Helpers", phase: phase3),
  Topic.create(name: "RSpec/Capybara", phase: phase3)
]

# Default mentor for testing. Log in with m@m.m, password mmmmmm
m_user = User.create(email: 'm@m.m', password: 'mmmmmm', password_confirmation: 'mmmmmm', first_name: 'Mia', last_name: 'Mentor', role: 'mentor')
m = Mentor.create(user: m_user)
Strength.create(mentor: m, topic: phase1topics[0])
Strength.create(mentor: m, topic: phase1topics[2])
Strength.create(mentor: m, topic: phase1topics[4])
Strength.create(mentor: m, topic: phase2topics[0])
Strength.create(mentor: m, topic: phase2topics[2])
Strength.create(mentor: m, topic: phase2topics[4])
Strength.create(mentor: m, topic: phase3topics[0])
Strength.create(mentor: m, topic: phase3topics[2])

# Default student for testing. Log in with s@s.s, password ssssss
s_user = User.create(email: 's@s.s', password: 'ssssss', password_confirmation: 'ssssss', first_name: 'Sybil', last_name: 'Student', role: 'student')
s = Student.create(user:s_user, phase:phase2)

# mentor users
mu1 = User.create(email: 'm1@m.m', password: 'mmmmmm', password_confirmation: 'mmmmmm', first_name: 'Mark', last_name: 'Miller', role: 'mentor')
mu2 = User.create(email: 'm2@m.m', password: 'mmmmmm', password_confirmation: 'mmmmmm', first_name: 'Morgan', last_name: 'Malik', role: 'mentor')
mu3 = User.create(email: 'm3@m.m', password: 'mmmmmm', password_confirmation: 'mmmmmm', first_name: 'Maria', last_name: 'Murphy', role: 'mentor')
mu4 = User.create(email: 'm4@m.m', password: 'mmmmmm', password_confirmation: 'mmmmmm', first_name: 'Matthew', last_name: 'Morris', role: 'mentor')
mu5 = User.create(email: 'm5@m.m', password: 'mmmmmm', password_confirmation: 'mmmmmm', first_name: 'Miguel', last_name: 'Marshall', role: 'mentor')

m1 = Mentor.create(user: mu1)
m2 = Mentor.create(user: mu2)
m3 = Mentor.create(user: mu3)
m4 = Mentor.create(user: mu4)
m5 = Mentor.create(user: mu5)

#strengths
Strength.create(mentor: m1, topic: phase1topics[0])
Strength.create(mentor: m1, topic: phase1topics[1])
Strength.create(mentor: m2, topic: phase1topics[2])
Strength.create(mentor: m2, topic: phase1topics[3])
Strength.create(mentor: m3, topic: phase1topics[4])
Strength.create(mentor: m3, topic: phase1topics[5])
Strength.create(mentor: m4, topic: phase1topics[0])
Strength.create(mentor: m4, topic: phase1topics[1])
Strength.create(mentor: m5, topic: phase1topics[2])
Strength.create(mentor: m5, topic: phase1topics[3])

Strength.create(mentor: m1, topic: phase2topics[0])
Strength.create(mentor: m1, topic: phase2topics[1])
Strength.create(mentor: m2, topic: phase2topics[2])
Strength.create(mentor: m2, topic: phase2topics[3])
Strength.create(mentor: m3, topic: phase2topics[4])
Strength.create(mentor: m3, topic: phase2topics[5])
Strength.create(mentor: m4, topic: phase2topics[0])
Strength.create(mentor: m4, topic: phase2topics[1])
Strength.create(mentor: m5, topic: phase2topics[2])
Strength.create(mentor: m5, topic: phase2topics[3])

Strength.create(mentor: m1, topic: phase3topics[0])
Strength.create(mentor: m1, topic: phase3topics[1])
Strength.create(mentor: m2, topic: phase3topics[2])
Strength.create(mentor: m2, topic: phase3topics[3])
Strength.create(mentor: m3, topic: phase3topics[0])
Strength.create(mentor: m3, topic: phase3topics[1])
Strength.create(mentor: m4, topic: phase3topics[2])
Strength.create(mentor: m4, topic: phase3topics[3])
Strength.create(mentor: m5, topic: phase3topics[0])
Strength.create(mentor: m5, topic: phase3topics[1])

# student users
su1 = User.create(
  email: 's1@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Samantha',
  last_name: 'Sullivan',
  role: 'student')
su2 = User.create(
  email: 's2@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Sela',
  last_name: 'Sewell',
  role: 'student')
su3 = User.create(
  email: 's3@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Scott',
  last_name: 'Shamus',
  role: 'student')
su4 = User.create(
  email: 's4@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Seth',
  last_name: 'Stephano',
  role: 'student')
su5 = User.create(
  email: 's5@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Sasha',
  last_name: 'Stewart',
  role: 'student')
su6 = User.create(
  email: 's6@s.s',
  password: 'ssssss',
  password_confirmation: 'ssssss',
  first_name: 'Santiago',
  last_name: 'Sharpe',
  role: 'student')
su7 = User.create(
  email: 's7@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Suri',
  last_name: 'Stone',
  role: 'student')
su8 = User.create(
  email: 's8@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Sergio',
  last_name: 'Steele',
  role: 'student')
su9 = User.create(
  email: 's9@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Sonya',
  last_name: 'Sherwood',
  role: 'student')
su10 = User.create(
  email: 's10@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Silas',
  last_name: 'Somerset',
  role: 'student')
su11 = User.create(
  email: 's11@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Stephanie',
  last_name: 'Sweets',
  role: 'student')
su12 = User.create(
  email: 's12@s.s',
  password: 'ssssss', password_confirmation: 'ssssss',
  first_name: 'Susan',
  last_name: 'Spark',
  role: 'student')

s1 = Student.create(user: su1, phase: phase1)
s2 = Student.create(user: su2, phase: phase1)
s3 = Student.create(user: su3, phase: phase1)
s4 = Student.create(user: su4, phase: phase1)
s5 = Student.create(user: su5, phase: phase2)
s6 = Student.create(user: su6, phase: phase2)
s7 = Student.create(user: su7, phase: phase2)
s8 = Student.create(user: su8, phase: phase2)
s9 = Student.create(user: su9, phase: phase3)
s10 = Student.create(user: su10, phase: phase3)
s11 = Student.create(user: su11, phase: phase3)
s12 = Student.create(user: su12, phase: phase3)

#Sybil student's past appointments
appointment0 = Appointment.create(
  mentor: m1,
  student: s,
  date: '2016-11-13',
  start_time: '2016-11-13 14:30',
  end_time: '2016-11-13 15:00'
  )

StudentFeedback.create(
  appointment: appointment0,
  body: 'Mark was really patient with me, and his explanations were crystal clear. There were some times where I wish he gave me a little more time to think and pseudocode before we jumped into coding, but I understand that there are time constraints.'
  )

appointment1 = Appointment.create(
  mentor: m2,
  student: s,
  date: '2016-11-14',
  start_time: '2016-11-14 11:00',
  end_time: '2016-11-14 11:30'
  )

StudentFeedback.create(
  appointment: appointment0,
  body: 'I got a lot out of working with Morgan. I love that I learned some shortcuts and alias tips along the way. However, some times the session felt derailed because she was so focused on teaching me keyboard tricks. It might be helpful to collect all of the handy tips and tricks into a GitHub Gist that she could just link her students to, so the session can be focused on the material.'
  )

# This one doesn't have feedback
appointment2 = Appointment.create(
  mentor: m,
  student: s,
  date: '2016-11-15',
  start_time: '2016-11-15 17:30',
  end_time: '2016-11-15 18:00'
  )

#Sybil student's future appointment that she will book with Mia Mentor
appointment3 = Appointment.create(
  mentor: m,
  date: '2016-11-20',
  start_time: '2016-11-20 17:30',
  end_time: '2016-11-20 18:00'
  )

# appointments
a1 = Appointment.create(
  mentor: m1,
  student: s1,
  date: '2016-11-14',
  start_time: '2016-11-14 14:30',
  end_time: '2016-11-14 15:00')

StudentFeedback.create(
  appointment: a1,
  body: 'Learned a lot. Could have gone at a more steady pace.'
  )

a2 = Appointment.create(
  mentor: m1,
  student: s2,
  date: '2016-11-15',
  start_time: '2016-11-15 11:30',
  end_time: '2016-11-15 12:00')

a3 = Appointment.create(
  mentor: m1,
  date: '2016-11-19',
  start_time: '2016-11-19 10:00',
  end_time: '2016-11-19 10:30')

a4 = Appointment.create(
  mentor: m1,
  student: s3,
  date: '2016-11-19',
  start_time: '2016-11-19 16:00',
  end_time: '2016-11-19 16:30')

a5 = Appointment.create(
  mentor: m2,
  student: s5,
  date: '2016-11-16',
  start_time: '2016-11-16 17:30',
  end_time: '2016-11-16 18:00')

StudentFeedback.create(
  appointment: a5,
  body: 'Learned a lot. Could have gone at a more steady pace.'
  )

a6 = Appointment.create(
  mentor: m2,
  student: s6,
  date: '2016-11-16',
  start_time: '2016-11-16 18:00',
  end_time: '2016-11-16 18:30')

a7 = Appointment.create(
  mentor: m2,
  student: s7,
  date: '2016-11-19',
  start_time: '2016-11-19 14:30',
  end_time: '2016-11-19 15:00')

a8 = Appointment.create(
  mentor: m2,
  student: s8,
  start_time: '2016-11-19 16:00',
  end_time: '2016-11-19 16:30')

a9 = Appointment.create(
  mentor: m3,
  student: s9,
  date: '2016-11-15',
  start_time: '2016-11-15 9:30',
  end_time: '2016-11-15 10:30')

StudentFeedback.create(
  appointment: a9,
  body: 'Learned a lot. Could have gone at a more steady pace.'
  )

a10 = Appointment.create(
  mentor: m3,
  student: s10,
  date: '2016-11-16',
  start_time: '2016-11-16 13:00',
  end_time: '2016-11-16 13:30')

a11 = Appointment.create(
  mentor: m3,
  date: '2016-11-19',
  start_time: '2016-11-19 11:00',
  end_time: '2016-11-19 11:30')

a12 = Appointment.create(
  mentor: m4,
  student: s12,
  date: '2016-11-20',
  start_time: '2016-11-20 11:00',
  end_time: '2016-11-20 11:30')

a13 = Appointment.create(
  mentor: m5,
  student: s1,
  date: '2016-11-14',
  start_time: '2016-11-14 10:00',
  end_time: '2016-11-14 10:30')

StudentFeedback.create(
  appointment: a13,
  body: 'Learned a lot. Could have gone at a more steady pace.'
  )

a14 = Appointment.create(
  mentor: m5,
  student: s2,
  date: '2016-11-15',
  start_time: '2016-11-15 16:00',
  end_time: '2016-11-15 16:30')

a15 = Appointment.create(
  mentor: m5,
  student: s3,
  date: '2016-11-20',
  start_time: '2016-11-20 14:00',
  end_time: '2016-11-20 14:30')

a16 = Appointment.create(
  mentor: m5,
  date: '2016-11-20',
  start_time: '2016-11-20 14:30',
  end_time: '2016-11-20 15:00')
