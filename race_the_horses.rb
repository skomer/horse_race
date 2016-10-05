require_relative('horse.rb')
require_relative('race.rb')


how_many_horses = 0
while how_many_horses < 2 || how_many_horses > 10
  puts "How many horses will enter this race? \n(Enter a number from 2-10)"
  how_many_horses = gets.chomp.to_i
end


user_horses = Array.new()

how_many_horses.times do
  puts "What's your horse's name?:"
  horse_name = gets.chomp
  puts "How old is your horse?"
  horse_age = gets.chomp.to_i
  
  horse_base_speed = 0
  while horse_base_speed < 1 || horse_base_speed > 10
    puts "How fast is your horse from 1-10?"
    horse_base_speed = gets.chomp.to_i
  end

  horse = Horse.new(name: horse_name, age: horse_age, base_speed: horse_base_speed)
  user_horses.push(horse)
end

puts "Where are your horses racing?"
race_course_name = gets.chomp
puts "How long is the racecourse? \n(Just enter a number)"
race_course_length = gets.chomp.to_i

this_race = Race.new(race_course_name, race_course_length, user_horses)

puts this_race.race_running

race_course_length.times do
  puts "."
  sleep 1
end

this_race.print_pretty_results
