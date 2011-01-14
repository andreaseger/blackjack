Feature: Getting a new Blackjack
  In order to be able to get Blackjack
  As a bored student
  I want to get a new card

Scenario: getting an Ace and show its value
  Given the next card in the stack is an "Ace"
   When I want a new card
   Then I should get an "Ace"
    And I should see "Your Score: 11"
    And I should see "New Card?(yes|no)"

Scenario: getting a second card
  Given I have a score of "5"
    And the next card in the stack is an "10"
   When I want a new card
   Then I should get an "10"
    And I should see "Your Score: 15"
    And I should see "New Card?(yes|no)"

Scenario: getting blackjack
  Given I have a score of "11"
    And the next card in the stack is an "10"
   When I want a new card
   Then I should get an "10"
    And I should see "Your Score: 21, Blackjack!"

