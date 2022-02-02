require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Ethan")
player2 = Player.new("Crumble")
Crumble = HumanPlayer.new("Tifa")