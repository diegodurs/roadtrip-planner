module DslData
def self.data
Proc.new do # does not work with lambda, u know y ?

# ---------------------

# Describe each step of the journey

first 'Illinois' do 
  city 'Chicago', 3
  city 'Rockford', 8
  start_at 2013, 1, 31 
end 
 
step 'Wisconsin' do 
  city 'Milwaukee', 2
  city 'Green Bay', 1
  city 'Madison', 2
end 
 
step 'Minnesota' do 
  city 'Minneapolis', 3
  city 'Saint Cloud', 2
end 
 
step 'South Dakota' do 
  city 'Sioux Falls', 2
end 
 
step 'North Dakota' do 
  city 'Fargo', 1
  city 'Bismarck', 2
end 
 
step 'South Dakota' do 
  city 'Keystone', 1
  city 'Custer', 2
end 
 
step 'Wyoming' do 
  city 'Cheyenne', 2
end 
 
step 'Colorado' do 
  city 'Denver', 2
  city 'Colorado Springs', 2
  city 'Breckenridge', 5
  city 'Aspen', 5
end 
 
step 'Utah' do 
  city 'Salt Lake City', 3
end 
 
step 'Montana' do 
  city 'Yellowstone', 4
end 
 
step 'Washington' do 
  city 'Spokane', 2
  city 'Seattle', 6
end 
 
step 'British Colombia' do 
  city 'Vancouver', 4
end 
 
step 'Washington' do 
  city 'Seattle', 1
end 
 
step 'Oregon' do 
  city 'Portland', 3
  city 'Salem', 2
  city 'Eugene', 1
end 
 
step 'California' do 
  travel 'Sacramento', 2
  city 'Sacramento', 3
  city 'San Fransisco', 5
  city 'Palo Alto', 1
  city 'Yosemite National Park', 3
  city 'Sequoia National Park', 2
  travel 'Santa Barbara', 1
  city 'Santa Barbara', 1
  city 'Oxnard', 1
  city 'Malibu', 1
  city 'Los Angeles', 10
  city 'San Diego', 3
end 
 
step 'Mexico' do 
  city 'Tijuana', 2
end 
 
step 'California' do 
  travel 'Death Valley', 1
  city 'Death Valley', 2
end 
 
step 'Nevada' do 
  city 'Las Vegas', 4
end 
 
step 'Arizona' do 
  city 'Grand Canyon National Park', 3
  city 'Monument Valley', 2
  city 'Flagstaff', 1
  city 'Phoenix', 2
  travel 'Albuquerque', 1
end 
 
step 'New Mexico' do 
  city 'Albuquerque', 2
  travel 'Oklahoma City', 1
end 
 
step 'Oklahoma' do 
  city 'Oklahoma City', 3
end 
 
step 'Texas' do 
  city 'Dallas', 3
  city 'San Antonio', 2
  city 'Houston', 3
  travel 'New Orleans', 1
end 
 
step 'Louisiana' do 
  city 'New Orelans', 3
end 
 
step 'Mississippi' do 
  city 'Jackson', 1
end 
 
step 'Tennesse' do 
  city 'Memphis', 2
  city 'Nashville', 2
end 
 
step 'Georgia' do 
  city 'Atlanta', 3
end 
 
step 'Florida' do 
  travel 'Tampa', 1
  city 'Tampa', 2
  city 'Miami', 4
  city 'Orlando', 3
end 
 
step 'Georgia' do 
  city 'Jacksontown', 1
  city 'Savannah', 2
end 
 
step 'South Carolina' do 
  city 'Charleston', 2
end 
 
step 'Georgia' do 
  city 'Augusta', 2
end 
 
step 'South Carolina' do 
  travel 'Charlotte', 1
end 
 
step 'North Carolina' do 
  city 'Charlotte', 2
  travel 'Richmond', 1
end 
 
step 'Virginia' do 
  city 'Richmond', 1
end 
 
step 'Washington D.C.' do 
  city 'Washington', 4
end 
 
step 'Maryland' do 
  city 'Baltimore', 2
end 
 
step 'Pennsylvania' do 
  city 'Gettysburg', 2
end 
 
step 'Delaware' do 
  city 'Wilmington', 1
end 
 
step 'Pennsylvania' do 
  city 'Philadelphie', 3
end 
 
step 'New Jersey' do 
  city 'Atlantic City', 2
  travel 'Princeton', 1
  city 'Princeton', 1
end 
 
step 'New-York' do 
  city 'New-York', 7
end 
 
step 'Connecticut' do 
  city 'New Heaven', 2
end 
 
step 'Rhode Island' do 
  city 'Providence', 2
end 
 
step 'Massachusetts' do 
  city 'Boston', 4
end 
 
step 'Vermont' do 
  travel 'Hanover', 1
  city 'Hanover', 1
  travel 'Portland', 1
end 
 
step 'Maine' do 
  city 'Portland', 1
  travel 'Halifax', 3
end 
 
step 'New Brunswick' do 
  city 'Halifax', 2
  travel 'Quebec', 2
end 
 
step 'Quebec' do 
  city 'Quebec', 2
  city 'Montreal', 3
end 
 
step 'Ontario' do 
  city 'Ottawa', 2
end 
 
step 'New York' do 
  city 'Ithaca', 1
  city 'Buffalo', 2
end 
 
step 'Ontario' do 
  city 'Toronto', 4
end 
 
step 'Pennsylvania' do 
  travel 'Pittsburh', 1
  city 'Pittsburh', 2
end 
 
step 'Ohio' do 
  city 'Cleveland', 2
  city 'Detroit', 3
  city 'Cincinnati', 2
end 
 
step 'Kentucky' do 
  city 'Louisville', 2
end 
 
step 'Indiana' do 
  city 'Indianapolis', 3
  city 'Shipshewana', 1
end 
 
step 'Illinois' do 
  city 'Chicago', 1
  city 'Rockford', 6
  city 'Chicago', 2
end 

# --------------------

end # end proc.new
end # end def
end # end module
