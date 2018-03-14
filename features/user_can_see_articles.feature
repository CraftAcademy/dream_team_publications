Feature: User should be able to see articles
  As a subscriber
  In order to be able to read the articles
  I would like the articles to be displayed

  Background:
    Given the following articles exist
    | title               | body                  |
    | Holger is the best  | Dreamteam for the win |
    | Swedish is too hard | Fika all day err day  |

  Scenario: User can see articles displayed
    Given I am on the "Holger is the best" page
    Then I should see "Holger is the best"
    And I should see "Dreamteam for the win"
    # And I should see "Swedish is too hard"
    # And I should see "Fika all day err day"
