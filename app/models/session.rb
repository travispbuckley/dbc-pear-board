class Session < ApplicationRecord
	belongs_to :slot
	belongs_to :student, { class_name: "User" }
	belongs_to :mentor, { class_name: "User" }
	has_many :feedbacks
end
