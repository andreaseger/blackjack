Feature: Starting Blackjack
  In order to wast some time
  As a bored student
  I want to play blackjack

Scenario: Starting the game
  Given I didn't started the game yet
   When I start the game
   Then I should see "Welcome to Blackjack"
    And I should see "New Card?(yes|no)"
