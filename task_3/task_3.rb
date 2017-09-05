require 'json'
#require 'Math'

file = File.read(ARGV[0].to_s)
json = JSON.parse(file)

a = json['a'].to_f.round(2)
b = json['b'].to_f.round(2)
c = json['c'].to_f.round(2)

d = b*b-4*a*c

if(d>0) then
	puts "{\n"
	puts '	"x1": "'+((-b-Math.sqrt(d))/(2*a)).to_s+'"'
	puts '	"x2": "'+((-b+Math.sqrt(d))/(2*a)).to_s+'"'
	puts '	"D": "'+ d.to_s+'"'
	puts "}\n"

end
if(d == 0) then
	puts "{\n"
	puts '	"x1": "'+(-b/(2*a)).to_s+'",'
	puts '	"x2": "'+(-b/(2*a)).to_s+'",'
	puts '	"D": "'+ d.to_s+'"'
	puts "}\n"
end
if(d<0) then
	puts "{\n"
	puts '	"x1": "NULL",'
	puts '	"x2": "NULL",'
	puts '	"D": "' + d.to_s + '"'
	puts "}\n"
end
