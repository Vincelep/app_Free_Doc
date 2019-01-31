class DoctorsSpecialty < ApplicationRecord
	belongs_to :Doctor
	belongs_to :Specialty
end
