class Slot < ApplicationRecord
	has_many :sessions

	validates :day, :start, { presence: true }
end
