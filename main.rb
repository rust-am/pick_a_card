puts "pick a card game"

values = %w[2 3 4 5 6 7 8 9 10 J Q K A]

suits = %w[♦ ♥ ♣ ♠]

cards = []
values.each { |value| suits.each { |suit| cards << "#{value} of #{suit}" } }

2.times {cards << '[Jocker]'}

cards.shuffle!
puts "number of cards to pick?"
number = STDIN.gets.to_i

number.times { puts cards.pop }
