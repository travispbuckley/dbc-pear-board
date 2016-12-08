# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(full_name: "Travis Buckley", email: "travis@gmail.com", phone_number: "555-555-5555", password: "password")

User.create(full_name: "Jeff Jones", email: "jeff@gmail.com", phone_number: "111-111-1111", password: "password")

User.create(full_name: "Collin Rea", email: "collin@gmail.com", phone_number: "887-177-1432", password: "password")
User.create(full_name: "Bradley Simmons", email: "bradley@gmail.com", phone_number: "122-655-1234", password: "password")
User.create(full_name: "Matt Ramuta", email: "matt@gmail.com", phone_number: "651-187-1178", password: "password")
User.create(full_name: "Eraince", email: "eraince@gmail.com", phone_number: "165-877-4624", password: "password")
User.create(full_name: "Travis Roy", email: "trro@gmail.com", phone_number: "887-755-1561", password: "password")
User.create(full_name: "Gary George", email: "gary@gmail.com", phone_number: "123-432-5443", password: "password")

# Saturday
Slot.create(start: "09:00", day: "Saturday")
Slot.create(start: "09:30", day: "Saturday")
Slot.create(start: "10:00", day: "Saturday")
Slot.create(start: "10:30", day: "Saturday")
Slot.create(start: "11:00", day: "Saturday")
Slot.create(start: "11:30", day: "Saturday")
Slot.create(start: "12:00", day: "Saturday")
Slot.create(start: "12:30", day: "Saturday")
Slot.create(start: "01:00", day: "Saturday")
Slot.create(start: "01:30", day: "Saturday")
Slot.create(start: "02:00", day: "Saturday")
Slot.create(start: "02:30", day: "Saturday")
Slot.create(start: "03:00", day: "Saturday")
Slot.create(start: "03:30", day: "Saturday")
Slot.create(start: "04:00", day: "Saturday")
Slot.create(start: "04:30", day: "Saturday")
Slot.create(start: "05:00", day: "Saturday")
Slot.create(start: "05:30", day: "Saturday")
#Sunday
Slot.create(start: "09:00", day: "Sunday")
Slot.create(start: "09:30", day: "Sunday")
Slot.create(start: "10:00", day: "Sunday")
Slot.create(start: "10:30", day: "Sunday")
Slot.create(start: "11:00", day: "Sunday")
Slot.create(start: "11:30", day: "Sunday")
Slot.create(start: "12:00", day: "Sunday")
Slot.create(start: "12:30", day: "Sunday")
Slot.create(start: "01:00", day: "Sunday")
Slot.create(start: "01:30", day: "Sunday")
Slot.create(start: "02:00", day: "Sunday")
Slot.create(start: "02:30", day: "Sunday")
Slot.create(start: "03:00", day: "Sunday")
Slot.create(start: "03:30", day: "Sunday")
Slot.create(start: "04:00", day: "Sunday")
Slot.create(start: "04:30", day: "Sunday")
Slot.create(start: "05:00", day: "Sunday")
Slot.create(start: "05:30", day: "Sunday")

Session.create(student_id: 1, mentor_id: 2, session_datetime: DateTime.new(2016, 12, 10, 3, 30, 0), slot_id: 1)
Session.create(student_id: 2, mentor_id: 5, session_datetime: DateTime.new(2016, 12, 10, 3, 30, 0), slot_id: 6)
Session.create(student_id: 1, mentor_id: 5, session_datetime: DateTime.new(2016, 12, 10, 3, 30, 0), slot_id: 9)
Session.create(student_id: 4, mentor_id: 8, session_datetime: DateTime.new(2016, 12, 10, 3, 30, 0), slot_id: 14)
Session.create(student_id: 3, mentor_id: 6, session_datetime: DateTime.new(2016, 12, 10, 3, 30, 0), slot_id: 13)
Session.create(student_id: 2, mentor_id: 6, session_datetime: DateTime.new(2016, 12, 11, 3, 30, 0), slot_id: 20)
Session.create(student_id: 2, mentor_id: 5, session_datetime: DateTime.new(2016, 12, 11, 3, 30, 0), slot_id: 24)
Session.create(student_id: 1, mentor_id: 5, session_datetime: DateTime.new(2016, 12, 11, 3, 30, 0), slot_id: 27)
Session.create(student_id: 1, mentor_id: 6, session_datetime: DateTime.new(2016, 12, 11, 3, 30, 0), slot_id: 26)
Session.create(student_id: 2, mentor_id: 7, session_datetime: DateTime.new(2016, 12, 11, 3, 30, 0), slot_id: 32)
Session.create(student_id: 4, mentor_id: 8, session_datetime: DateTime.new(2016, 12, 11, 3, 30, 0), slot_id: 34)



Feedback.create(author_id: 1, session_id: 1, feedback_text: "This mentoring session was awesome")