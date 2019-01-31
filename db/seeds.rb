require 'faker'



#Doctor.destroy_all
#Patient.destroy_all


10.times do |index|
	citi = City.create!(zip_code: Faker::Address.zip)
end

10.times do |index|
	doc = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code:Faker::Address.zip_code, city_id: (rand(City.first.id..City.last.id)))
end

20.times do |index|
	pat = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: (rand(City.first.id..City.last.id)))
end

20.times do |index|
	rdv = Appointment.create!(date: Faker::Time.forward(20, :day), doctor_id: (rand(Doctor.first.id..Doctor.last.id)), patient_id: (rand(Patient.first.id..Patient.last.id)),city_id: (rand(City.first.id..City.last.id)))
end

10.times do |index|
	spec = Specialty.create!(name: Faker::Beer.name)
end

10.times do |index|
	ds = DoctorsSpecialty.create!(doctor_id: (rand(Doctor.first.id..Doctor.last.id)), specialty_id: (rand(Specialty.first.id..Specialty.last.id)))
end
