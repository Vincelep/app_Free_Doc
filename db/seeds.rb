require 'faker'



#Doctor.destroy_all
#Patient.destroy_all




10.times do |index|
	doc = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Pokemon.unique.name, zip_code:Faker::Address.zip_code )
end

20.times do |index|
	pat = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

20.times do |index|
	rdv = Appointment.create!(date: Faker::Time.forward(20, :day), doctor_id: rand(Doctor.first.id..Doctor.last.id), patient_id: rand(Patient.first.id..Patient.last.id) )
end

2.times do |index|
	citi = City.create!()
end

2.times do |index|
	spec = Specialty.create!()
end