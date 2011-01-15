Feature: Getting a new Blackjack
  In order to be able to get Blackjack
  As a bored student
  I want to get a new card

Background:
 Given I started the game
   And have a score of 0


Scenario: getting an Jack and show its value
 Given the next card in the stack is a "Jack" with value 10
  When I want a new card
  Then I should see "Your Card: Jack"
   And I should see "Your Score: 10"

Scenario: getting an two card
 Given the next card in the stack is a "Five" with value 5
	 And the second next card is a "King" with value 10
  When I want a new card
	 And I want a new card
  Then I should see "Your Card: King"
   And I should see "Your Score: 15"
