require_relative("./player.rb")
require_relative("./game.rb")

puts "What is the name of Player 1?"
p1 = gets.chomp
puts "What is the name of Player 2?"
p2 = gets.chomp
puts "Let's start"
g1 = Game.new p1, p2
g1.rounds