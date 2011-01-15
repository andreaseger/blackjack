Given /^(?:|I )didn't started the game yet$/ do
end

class Output
  def messages
    @messages ||= []
  end
  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

When /^(?:|I )start the game$/ do
  game = Blackjack::Game.new(output)
  game.start
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  output.messages.should include(text)
end


Given /^(?:|I )started the game$/ do
  @game = Blackjack::Game.new(output)
  @game.start
end

Given /^have a score of (\d+)$/ do |score|
  @game.score.should == score.to_i
end

Given /^the next card in the stack is (?:|an|a) "([^"]*)" with value (\d+)$/ do |card, value|
  @game.stack = Array.new
  @game.stack.push({:name => card, :value => value.to_i})
end

When /^(?:|I )want a new card$/ do
  @game.new_card
end

Given /^the second next card is (?:|an|a) "([^"]*)" with value (\d+)$/ do |card, value|
  @game.stack.push({:name => card, :value => value.to_i})
end


