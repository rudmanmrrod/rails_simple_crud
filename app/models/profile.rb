class Profile < ApplicationRecord
	validates :name, presence: true
	validates :profession, presence: true
	validates :age, presence: true
	validates :age, numericality: true
end
