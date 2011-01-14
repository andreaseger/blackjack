module Blackjack
  class Game
    def initialize(output)
      @output = output
    end
    def start
      @output.puts "Welcome to Blackjack"
      @output.puts "New Card?(yes|no)"
    end
  end
end
