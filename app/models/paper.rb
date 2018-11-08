class Paper < ApplicationRecord
	has_and_belongs_to_many :author

	validates :title, presence: true
	validates :venue, presence: true
	validates :year, presence: true
	validates :year, numericality: { only_integer: true }

end
