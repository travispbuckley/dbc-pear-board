class Feedback < ApplicationRecord
	belongs_to :author, { class_name: "User" }
	belongs_to :session
end
