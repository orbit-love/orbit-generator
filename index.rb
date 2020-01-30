require "faker"
require "csv"

file = 'members.csv'
CSV.open(file, 'w') do |row|

  members = []

  headers = ["Name", "Love", "Reach", "Location"]

  row << headers

  # 5:15:30:50

  _distribution = [[1]*50, [2]*30, [3]*15, [4]*10, [5]*10].flatten
  _locations = [["San Francisco"]*8, ["Paris"]*5, ["London"]*3, ["Singapore"]*2, ["Melbourne"], ["Bengalore"]].flatten

  rows = []

  1000.times do |i|

    name = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
    love = _distribution.sample
    reach = _distribution.sample
    location = _locations.sample

    rows << [name, love, reach, location]

  end

  rows.each do |_row|
    row << _row
  end

end

