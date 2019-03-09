namespace :populate do
  desc "Populate Trips"
  task trips: :environment do
    5.times do
      trip = Trip.create(name: Faker::Address.country, start_date: Date.today, end_date: "08/09/2019", user_id: 1)
      10.times do  
        location = Location.create(name: Faker::Address.state, days: Faker::Number.between(1, 20), trip_id: trip.id)
        10.times { Address.create(state: location.name, city: Faker::Address.city, zip: Faker::Address.zip, location_id: location.id) }
      end
    end 
  end

end
