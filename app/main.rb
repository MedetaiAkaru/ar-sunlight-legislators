require_relative './models/congressperson.rb'

# puts "Which state would you like to query about?"
# input = gets.chomp

# puts "Senators:"
# x = Congressperson.where(title: 'Sen', state: input).order(:lastname)
# x.each do |y|
# puts "  " + y.firstname + " " + y.lastname + " (" + y.party + ")"
# end
# puts "Representatives:"
# x = Congressperson.where(title: 'Rep', state: input).order(:lastname)
# x.each do |y|
# puts "  " + y.firstname + " " + y.lastname + " (" + y.party + ")"
# end

# puts "Which gender stats do you want to look at?"
# input = gets.chomp
# ------------------------
puts "Gender Stats"
x = Congressperson.where(gender: input, title: 'Sen', in_office: true)
noofsenators = x.length
x = Congressperson.where(gender: input, title: 'Rep', in_office: true)
noofrepresentatives = x.length

x = Congressperson.where(title: 'Sen', in_office: true)
totalnoofsenators = x.length
x = Congressperson.where(title: 'Rep', in_office: true)
totalnoofrepresentatives = x.length

puts input.to_s + " Senators: " + noofsenators.to_s + " (" + (noofsenators*100/totalnoofsenators).to_s + "%)"
puts input.to_s + " Representatives: " + noofrepresentatives.to_s + " (" + (noofrepresentatives*100/totalnoofrepresentatives).to_s + "%)"
