require 'csv'
FIXTURES = "#{Rails.root.to_s}/db/fixtures"

# Locations
puts "Starting Locations...\n"
csv_data = CSV.read "#{FIXTURES}/locations.csv"
headers = csv_data.shift.map {|i| i.to_s }
string_data = csv_data.map {|row| row.map {|cell| cell.to_s } }
array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }

array_of_hashes.each do |row|
  puts "Starting record for #{row["name"]}"
  loc = Location.find_by_slug(row["slug"])
  Location.create(row) if loc.nil?
end
puts "Locations complete.\n"