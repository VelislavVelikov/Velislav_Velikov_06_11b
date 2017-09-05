require 'json'
require 'math'

json = JSON.parse(ARGV[0].to_s)

a = json['a'].to_i
b = json['b'].to_i
c = json['c'].to_i

d = b*b-4*a*c

if(d>0) then
	puts 'x1='+((-b-Math.sqrt(d))/(2*a)).to_s
	puts 'x2='+((-b+Math.sqrt(d))/(2*a)).to_s
else if(d == 0) then
	puts 'x1 and x2='+((-b/(2*a)).to_s
else
	puts 'No resolve'
)
