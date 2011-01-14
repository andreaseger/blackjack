Feature: Getting a new Blackjack
  In order to be able to get Blackjack
  As a bored student
  I want to get a new card

Background:
 Given I started the game
   And have a score of 0


Scenario: getting an Ace and show its value
 Given the next card in the stack is an "Ace" with value 11
  When I want a new card
  Then I should see "Your Card: Ace"
   And I should see "Your Score: 11"
