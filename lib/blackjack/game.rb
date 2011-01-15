module Blackjack
  class Game
    attr_accessor :score
    attr_accessor :stack
    def initialize(output)
      @output = output
      @score = 0
    end
    def start
      @output.puts "Welcome to Blackjack"
      @output.puts "New Card?(yes|no)"
      @stack = new_stack
      if @stack
        new_card
      end
    end
    def new_card
      card = @stack.pop
      @score += card[:value]
      @output.puts "Your Card: #{card[:name]}"
      @output.puts "Your Score: #{@score}"
    end
    def new_stack
    end
  end
end
