class Feedback < ApplicationRecord
	belongs_to :author, { class_name: "User" }
	belongs_to :session

	validates :author_id, :session_id, :feedback_text, { presence: true }
end
