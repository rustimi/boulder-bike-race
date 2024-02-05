# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


riders_data = [{fname: 'Dustin', lname: 'Green', city_origin: 'Hickory Hills', state_origin: 'IL', latitude: 40, longitude: -105.35},
  {fname: 'Jason', lname: 'Finn', city_origin: 'Huntington Beach', state_origin: 'CA', latitude: 39.95, longitude: -105.24},
  {fname: 'Howard', lname: 'Thompson', city_origin: 'Hale', state_origin: 'MO', latitude: 40.06, longitude: -105.26},
  {fname: 'Maggie', lname: 'Lantz', city_origin: 'Dublin', state_origin: 'OH', latitude: 40.03, longitude: -105.23},
  {fname: 'Lawrence', lname: 'Duran', city_origin: 'Fort Myers', state_origin: 'FL', latitude: 40.04, longitude: -105.23},
  {fname: 'Irene', lname: 'Molina', city_origin: 'Tucson', state_origin: 'AZ', latitude: 39.96, longitude: -105.22},
  {fname: 'Nancy', lname: 'Garner', city_origin: 'Baltimore', state_origin: 'MD', latitude: 39.98, longitude: -105.21},
  {fname: 'Tara', lname: 'Taylor', city_origin: 'Minneapolis', state_origin: 'MN', latitude: 40, longitude: -105.25},
  {fname: 'Alejandro', lname: 'Smith', city_origin: 'Scarborough', state_origin: 'ME', latitude: 40.02, longitude: -105.26},
  {fname: 'Tricia', lname: 'Renshaw', city_origin: 'Mystic', state_origin: 'CT', latitude: 40.02, longitude: -105.3},
  {fname: 'Travis', lname: 'Cook', city_origin: 'Twin Lakes', state_origin: 'WI', latitude: 40.01, longitude: -105.2},
  {fname: 'Joan', lname: 'Brooks', city_origin: 'Norfolk', state_origin: 'VA', latitude: 39.98, longitude: -105.24},
  {fname: 'Joseph', lname: 'Rodgers', city_origin: 'Wayne', state_origin: 'NJ', latitude: 39.99, longitude: -105.25},
  {fname: 'Matthew', lname: 'Gregson', city_origin: 'Brashear', state_origin: 'MO', latitude: 40.01, longitude: -105.29},
  {fname: 'Katie', lname: 'Dunlap', city_origin: 'Marion', state_origin: 'VA', latitude: 39.97, longitude: -105.27},
  {fname: 'Leo', lname: 'Howard', city_origin: 'Dallas', state_origin: 'TX', latitude: 39.97, longitude: -105.33},
  {fname: 'Maria', lname: 'Baisden', city_origin: 'Raleigh', state_origin: 'NC', latitude: 40, longitude: -105.29},
  {fname: 'Sandy', lname: 'Townsend', city_origin: 'Newport', state_origin: 'PA', latitude: 40.05, longitude: -105.3},
  {fname: 'Melinda', lname: 'Stephenson', city_origin: 'Kahului', state_origin: 'HI', latitude: 39.99, longitude: -105.31},
  {fname: 'Jason', lname: 'Nichols', city_origin: 'Alexandria', state_origin: 'VA', latitude: 40.01, longitude: -105.32}]

riders_data.each do |rider_data|
   Rider.create(rider_data)
 end
