#!/usr/bin/env ruby
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'blackjack'
game = Blackjack::Game.new(STDOUT)
game.start
