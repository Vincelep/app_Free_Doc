class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	belongs_to :city
	has_many :doctors_specialties
	has_many :specialties, through: :doctors_specialties
end
