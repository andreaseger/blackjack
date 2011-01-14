Given /^I didn't started the game yet$/ do
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

When /^I start the game$/ do
  game = Blackjack::Game.new(output)
  game.start
end

Then /^I should see "([^"]*)"$/ do |text|
  output.should include(text)
end

