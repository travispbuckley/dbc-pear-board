# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(full_name: "Travis Buckley", email: "travis@gmail.com", phone_number: "555-555-5555", password: "password", picture_link: "tinyurl.com
	")

User.create(full_name: "Jeff Jones", email: "jeff@gmail.com", phone_number: "111-111-1111", password: "password", picture_link: "tinyurl.com
	")

Session.create(student_id: 1, mentor_id: 2, session_datetime: DateTime.now, slot_id: 1)

Slot.create(start: "11:30", day: "Saturday")

Feedback.create(author_id: 1, session_id: 1, feedback_text: "This mentoring session was awesome")