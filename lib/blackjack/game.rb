module Blackjack
  class Game
    attr_reader :score
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
      @output.puts "Your Card: #{@stack.first[:name]}"
      @output.puts "Your Score: #{@stack.first[:value]}"
    end
    def new_stack
    end
  end
end
