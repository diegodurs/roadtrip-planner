class RubySeeder

  def run
    illinois = State.new do |s|
      s.name = "Illinois"
      s.cities = 
      [
        chicago = City.new('Chicago', 3),
        rockford = City.new('Rockford', 8)
      ]
      s.start_date = Date.new(2013, 1, 31)
    end

    wisconsin = State.new do |s|
      s.name = "Wisconsin"
      s.prev_state = illinois
      s.cities = 
      [
        milwaukee = City.new('Milwaukee', 2),
        green_bay = City.new('Green Bay', 1),
        madison   = City.new('Madison', 2)
      ]
    end

    minnesota = State.new do |s|
      s.name = 'Minnesota'
      s.prev_state = wisconsin
      s.cities = [
        City.new('Minneapolis', 3),
        City.new('Saint Cloud', 2)
      ]
    end

    south_dakota = State.new do |s|
      s.name = 'South Dakota'
      s.cities = [City.new('Sioux Falls', 2)]
      s.prev_state = minnesota
    end

    north_dakota = State.new do |s|
      s.prev_state = south_dakota
      s.name = 'North Dakota'
      s.cities = 
      [
        fargo = City.new('Fargo', 1),
        bismarck = City.new('Bismarck', 2)
      ]
    end

    south_dakota_bis = State.new do |s|
      s.prev_state = north_dakota
      s.name = 'South Dakota'
      s.cities = 
      [
        City.new('Keystone', 1), 
        City.new('Custer', 2)
      ]
    end

    wyoming = State.new do |s|
      s.prev_state = south_dakota_bis
      s.name = 'Wyoming'
      s.cities = [City.new('Cheyenne', 2)]
    end

    colorado = State.new do |s|
      s.prev_state = wyoming
      s.name = 'Colorado'
      s.cities = 
      [
        City.new('Denver', 2),
        City.new('Colorado Springs', 2),
        City.new('Breckenridge', 5),
        City.new('Aspen', 5)
      ]
    end

    utah = State.new do |s|
      s.prev_state = colorado
      s.name = 'Utah'
      s.cities = [ City.new('Salt Lake City', 3) ]
    end

    montana = State.new do |s|
      s.prev_state = utah
      s.name = 'Montana'
      s.cities = [ City.new('Yellowstone', 4) ]
    end

    washington = State.new do |s|
      s.prev_state = montana
      s.name = "Washington"
      s.cities = [ 
        City.new('Spokane', 2), 
        City.new('Seattle', 6) 
      ]
    end

    british_colombia = State.new do |s|
      s.prev_state = washington
      s.name = "British Colombia"
      s.cities = [
        City.new('Vancouver', 4)
      ]
      s.country = 'Canada'
    end

    washington = State.new do |s|
      s.prev_state = british_colombia
      s.name = "Washington"
      s.cities = [ 
        City.new('Seattle', 1) 
      ]
    end

    oregon = State.new do |s|
      s.prev_state = washington
      s.name = 'Oregon'
      s.cities = [
        City.new('Portland', 3),
        City.new('Salem', 2),
        City.new('Eugene', 1)
      ]
    end

    california = State.new do |s|
      s.prev_state = oregon
      s.name = 'California'
      s.cities =
      [
        Travel.new('Sacramento', 2),
        City.new('Sacramento', 3),
        City.new('San Fransisco', 5),
        City.new('Palo Alto', 1),
        City.new('Yosemite National Park', 3),
        City.new('Sequoia National Park', 2),
        Travel.new('Santa Barbara', 1),
        City.new('Santa Barbara', 1),
        City.new('Oxnard', 1),
        City.new('Malibu', 1),
        City.new('Los Angeles', 10),
        City.new('San Diego', 3)
      ]
    end

    mexico = State.new do |s|
      s.prev_state = california
      s.name = 'Mexico'
      s.country = 'Mexico'
      s.cities =
      [
        City.new('Tijuana', 2)
      ]
      country = 'Mexico'
    end

    california_bis = State.new do |s|
      s.prev_state = mexico
      s.name = 'California'
      s.cities = 
      [
        Travel.new('Death Valley', 1),
        City.new('Death Valley', 2)
      ]
    end

    nevada = State.new do |s|
      s.prev_state = california_bis
      s.name = 'Nevada'
      s.cities = [
        City.new('Las Vegas', 4)
      ]
    end

    arizona = State.new do |s|
      s.prev_state = nevada
      s.name = 'Arizona'
      s.cities = [
        City.new('Grand Canyon National Park', 3),
        City.new('Monument Valley', 2),
        City.new('Flagstaff', 1),
        City.new('Phoenix', 2),
        Travel.new('Albuquerque', 1)
      ]
    end

    new_mexico = State.new do |s|
      s.prev_state = arizona
      s.name = "New Mexico"
      s.cities = [
        City.new('Albuquerque', 2),
        Travel.new('Oklahoma City', 1)
      ]
    end


    oklahoma = State.new do |s|
      s.prev_state = new_mexico
      s.name = 'Oklahoma'
      s.cities = [ City.new('Oklahoma City', 3) ]
    end

    texas = State.new do |s|
      s.prev_state = oklahoma
      s.name = 'Texas'
      s.cities = [
        City.new('Dallas', 3),
        City.new('San Antonio', 2),
        City.new('Houston', 3),
        Travel.new('New Orleans', 1)
      ]
    end

    louisiane = State.new do |s|
      s.prev_state = texas
      s.name = 'Louisiana'
      s.cities = [
        City.new('New Orelans', 3)
      ]
    end

    mississippi = State.new do |s|
      s.prev_state = louisiane
      s.name = 'Mississippi'
      s.cities = [ 
        City.new('Jackson', 1)
      ]
    end

    tennesse = State.new do |s|
      s.prev_state = mississippi
      s.name = 'Tennesse'
      s.cities = [
        City.new('Memphis', 2),
        City.new('Nashville', 2)
      ]
    end

    georgia = State.new do |s|
      s.prev_state = tennesse
      s.name = 'Georgia'
      s.cities = [
        City.new('Atlanta', 3)
      ]
    end

    floride = State.new do |s|
      s.prev_state = georgia
      s.name = 'Florida'
      s.cities = [
        Travel.new('Tampa', 1),
        City.new('Tampa', 2),
        City.new('Miami', 4),
        City.new('Orlando', 3)
      ]
    end

    georgia_bis = State.new do |s|
      s.prev_state = floride
      s.name = 'Georgia'
      s.cities = [
        City.new('Jacksontown', 1),
        City.new('Savannah', 2)
      ]
    end

    south_carolina = State.new do |s|
      s.prev_state = georgia_bis
      s.name = 'South Carolina'
      s.cities = [ City.new('Charleston', 2) ]
    end

    georgia_tis = State.new do |s|
      s.prev_state = south_carolina
      s.name = 'Georgia'
      s.cities = [ City.new('Augusta', 2) ]
    end

    south_carolina_bis = State.new do |s|
      s.prev_state = georgia_tis
      s.name = 'South Carolina'
      s.cities = [ 
        Travel.new('Charlotte', 1)
      ]
    end
    north_carolina = State.new do |s|
      s.prev_state = south_carolina_bis
      s.name = "North Carolina"
      s.cities = [ 
        City.new('Charlotte', 2),
        Travel.new('Richmond', 1)
      ]
    end

    virginia = State.new do |s|
      s.prev_state = north_carolina
      s.name = 'Virginia'
      s.cities = [ City.new('Richmond', 1)]
    end

    washington_dc = State.new do |s|
      s.prev_state = virginia
      s.name = 'Washington D.C.'
      s.cities = [ City.new('Washington', 4)]
    end

    maryland = State.new do |s|
      s.prev_state = washington_dc
      s.name = 'Maryland'
      s.cities = [ City.new('Baltimore', 2)]
    end

    pennsylvanie = State.new do |s|
      s.prev_state = maryland
      s.name = 'Pennsylvania'
      s.cities = [ City.new('Gettysburg', 2)]
    end

    delaware = State.new do |s|
      s.prev_state = pennsylvanie
      s.name = 'Delaware'
      s.cities = [ City.new('Wilmington', 1)]
    end

    pennsylvanie_bis = State.new do |s|
      s.prev_state = delaware
      s.name = 'Pennsylvania'
      s.cities = [ City.new('Philadelphie', 3)]
    end

    new_jersey = State.new do |s|
      s.prev_state = pennsylvanie_bis
      s.name = 'New Jersey'
      s.cities = [
        City.new('Atlantic City', 2),
        Travel.new('Princeton', 1),
        City.new('Princeton', 1)
      ]
    end

    new_york = State.new do |s|
      s.prev_state = new_jersey
      s.name = 'New-York'
      s.cities = [City.new('New-York', 7)]
    end

    connecticut = State.new do |s|
      s.prev_state = new_york
      s.name = 'Connecticut'
      s.cities = [ City.new('New Heaven', 2) ]
    end

    rhode_island = State.new do |s|
      s.prev_state = connecticut
      s.name = 'Rhode Island'
      s.cities = [ City.new('Providence', 2)]
    end

    massachusetts = State.new do |s|
      s.prev_state = rhode_island
      s.name = 'Massachusetts'
      s.cities = [ City.new('Boston', 4)]
    end

    vermont = State.new do |s|
      s.prev_state = massachusetts
      s.name = 'Vermont'
      s.cities = [ 
        Travel.new('Hanover',1),
        City.new('Hanover',1),
        Travel.new('Portland', 1)
      ]
    end

    maine = State.new do |s|
      s.prev_state = vermont
      s.name = 'Maine'
      s.cities = [
        City.new('Portland', 1),
        Travel.new('Halifax', 3)
      ]
    end
    nova_brunswick = State.new do |s|
      s.prev_state = maine
      s.name = 'New Brunswick'
      s.cities = [ 
        City.new('Halifax', 2),
        Travel.new('Quebec', 2)
      ]

    end

    quebec = State.new do |s|
      s.prev_state = nova_brunswick
      s.name = 'Quebec'
      s.country = 'Canada'
      s.cities = [ 
        City.new('Quebec', 2),
        City.new('Montreal', 3)
      ]
    end

    ontario = State.new do |s|
      s.prev_state = quebec
      s.name = 'Ontario'
      s.cities = [City.new('Ottawa', 2)]
    end

    new_york_bis = State.new do |s|
      s.prev_state = ontario
      s.name = 'New York'
      s.cities = [
        City.new('Ithaca', 1), 
        City.new('Buffalo', 2)
      ]
    end

    ontario_bis = State.new do |s|
      s.prev_state = new_york_bis
      s.name = 'Ontario'
      s.cities = [
        City.new('Toronto', 4)
      ]
    end

    pennsylvanie_bis = State.new do |s|
      s.prev_state = ontario_bis
      s.name = 'Pennsylvania'
      s.cities = [
        Travel.new('Pittsburh',1),
        City.new('Pittsburh',2)
      ]
    end

    ohio = State.new do |s|
      s.prev_state = pennsylvanie_bis
      s.name = 'Ohio'
      s.cities = [
        City.new('Cleveland', 2),
        City.new('Detroit', 3),
        City.new('Cincinnati', 2)
      ]
    end

    kentucky = State.new do |s|
      s.prev_state = ohio
      s.name = 'Kentucky'
      s.cities = [
        City.new('Louisville', 2)
      ]
    end

    indiana = State.new do |s|
      s.prev_state = kentucky
      s.name = 'Indiana'
      s.cities = [
        City.new('Indianapolis', 3),
        City.new('Shipshewana', 1)
      ]
    end

    illinois_bis = State.new do |s|
      s.prev_state = indiana
      s.name = 'Illinois'
      s.cities = [
        City.new('Chicago', 1),
        City.new('Rockford', 6),
        City.new('Chicago', 2)
      ]
    end
    @first = illinois
    @first
  end
end
