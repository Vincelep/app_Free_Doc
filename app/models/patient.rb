class Patient < ApplicationRecord
	has_many :Appointments, dependent: :destroy
 	has_many :doctors, through: :appointments
 	belongs_to :city
end
