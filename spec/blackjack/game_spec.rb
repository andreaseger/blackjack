require 'spec_helper'

module Blackjack
  describe Game do
    describe '#start' do
      it "should show a welcome message" do
        output = stub_everything('output')
        game = Game.new(output)

        #output.expects(:puts).with("Welcome to Blackjack")
        game.start
      end
      it "should promt for the first card" do
        output = stub_everything('output')
        game = Game.new(output)

        output.expects(:puts).with("New Card?(yes|no)")
        game.start
      end
    end
  end
end
