require "faker"
require "csv"

file = 'members.csv'
CSV.open(file, 'w') do |row|

  members = []

  headers = ["Name", "Love", "Reach", "Location", "Groups"]

  row << headers

  # 5:15:30:50

  _distribution = [[1]*50, [2]*30, [3]*15, [4]*10, [5]*10].flatten
  _pronouns = ["He / him", "She / her", "They / them"]
  _groups = ["Ruby", "PHP", "JavaScript", "Python"]

  rows = []

  100.times do |i|

    name = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
    love = _distribution.sample
    reach = _distribution.sample

    address = Faker::Address
    location = address.city

    groups = _groups.sample

    rows << [name, love, reach, location, groups]

  end

  rows.each do |_row|
    row << _row
  end

end

