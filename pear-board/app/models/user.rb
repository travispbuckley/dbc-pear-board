class User < ApplicationRecord
	has_many :feedbacks, { foreign_key: :author_id }
	has_many :student_sessions, { foreign_key: :student_id, class_name: "Session"}
	has_many :mentor_sessions, { foreign_key: :mentor_id, class_name: "Session" } 
	has_many :student_slots, through: :student_sessions, source: :slot
	has_many :mentor_slots, through: :mentor_sessions, source: :slot
end
