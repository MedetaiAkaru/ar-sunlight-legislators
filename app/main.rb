require_relative './models/congressperson.rb'

puts "Which state would you like to query about?"
input = gets.chomp

puts "Senators:"
x = Congressperson.where(title: 'Sen', state: input).order(:lastname)
x.each do |y|
puts "  " + y.firstname + " " + y.lastname + " (" + y.party + ")"
end
puts "Representatives:"
x = Congressperson.where(title: 'Rep', state: input).order(:lastname)
x.each do |y|
puts "  " + y.firstname + " " + y.lastname + " (" + y.party + ")"
end
