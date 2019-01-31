class DoctorsSpecialty < ApplicationRecord
	has_many :Doctor
	has_many :Specialty
end
