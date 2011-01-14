Given /^I didn't started the game yet$/ do
end

def output
  @output ||= Array.new
end

When /^I start the game$/ do
  game = Blackjack::Game.new(output)
  game.start
end

Then /^I should see "([^"]*)"$/ do |text|
  output.should include(text)
end

