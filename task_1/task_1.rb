require 'csv'

csv_file = ARGV[0]
csv_hash = Hash.new

CSV.foreach(csv_file) do |row|
	csv_hash[row[1]] = (csv_hash[row[1]]).to_f + row[2].to_f
end

printf("%s,%.2f\n", csv_hash.key(csv_hash.values.max), csv_hash.values.max)
