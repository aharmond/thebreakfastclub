namespace :populate do
  desc "Populate Trips"
  task trips: :environment do
    5.times do
      trip = Trip.create(name: Faker::Address.country)
      10.times do  
        location = Location.create(name: Faker::Address.state)
        10.times {Address.create(state: location.name, city: Faker::Address.city, zip: Faker::Address.zip, location_id = location.location_id =>
      end
    end 
  end

end
