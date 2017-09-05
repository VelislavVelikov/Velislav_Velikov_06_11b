require 'json'

file_first = File.read(ARGV[0].to_s)
file_second = File.read(ARGV[1].to_s)


if JSON.parse(file_first) == JSON.parse(file_second) 
	puts 1
else
	puts 0
end
	
