require 'spec_helper'

module Blackjack
  describe Game do
    describe '#start' do
      before :each do
        @output = stub_everything('output')
        @game = Game.new(@output)
      end
      it "should show a welcome message" do
        @output.expects(:puts).with("Welcome to Blackjack")
        @game.start
      end
      it "should promt for the first card" do
        @output.expects(:puts).with("New Card?(yes|no)")
        @game.start
      end
      it "should get a new stack of cards" do
        @game.expects(:new_stack)
        @game.start
      end
      it "should show the first cards name" do
        stack = [{:name => 'Jack', :value => 10}]
        @game.stubs(:new_stack).returns(stack)
        @output.expects(:puts).with('Your Card: Jack')
        @game.start
      end
      it "should show the first cards value" do
        stack = [{:name => 'Nine', :value => 9}]
        @game.stubs(:new_stack).returns(stack)
        @output.expects(:puts).with('Your Score: 9')
        @game.start
      end
    end
  end
end
