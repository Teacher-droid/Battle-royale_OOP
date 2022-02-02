require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Ethan")
player2 = Player.new("Crumble")
Crumble = HumanPlayer.new("Tifa")

while player1.life_points > 0 && player2.life_points > 0
    puts ""
    puts "Etat des joueur:"
    print player1.show_state
    puts player2.show_state
    puts "A l'attaque"
    player2.attack(player1)
    break if player1.life_points <= 0
    player1.attack(player2)
end