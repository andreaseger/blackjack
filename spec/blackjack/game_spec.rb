require 'spec_helper'

module Blackjack
  describe Game do
    before :each do
      @output = stub_everything('output')
      @game = Game.new(@output)
    end
    describe '#start' do
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
    describe "#new_card" do
      it "should remove the card from the stack after it got picked" do
        @game.stack = [{:name => 'Nine', :value => 9}]
        @game.new_card
        @game.stack.should == []
      end
      it "should add the card value to the score" do
        @game.score = 0
        @game.stack = [{:name => 'Seven', :value => 7}]
        @game.new_card
        @game.score.should == 7
      end
      it "should add the card value to the score" do
        @game.score = 5
        @game.stack = [{:name => 'Queen', :value => 10}]
        @game.new_card
        @game.score.should == 15
      end
      it "should show the score" do
        @game.score = 5
        @game.stack = [{:name => 'Queen', :value => 10}]
        @output.expects(:puts).with('Your Score: 15')
        @game.new_card
      end
    end
  end
end
