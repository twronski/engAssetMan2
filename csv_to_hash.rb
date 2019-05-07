require 'csv'
# csv_data = CSV.read '/home/thiagowronski/code/Rails/engAssetMan2/Ativos_database_rev00.csv'
# headers = csv_data.shift.map {|i| i.to_s }
# string_data = csv_data.map {|row| row.map {|cell| cell.to_s } }
# array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }
# puts array_of_hashes

CSV::Converters[:blank_to_nil] = lambda do |field|
    field && field.empty? ? nil : field
  end
array_of_hashes = []
csv_data = File.read('/home/thiagowronski/code/Rails/engAssetMan2/Ativos_database_rev00.csv')
csv = CSV.new(csv_data, :headers => true, :header_converters => :symbol, :converters => [:all, :blank_to_nil])
csv.to_a.map {|row| array_of_hashes << row.to_hash }
puts array_of_hashes
puts array_of_hashes.class
