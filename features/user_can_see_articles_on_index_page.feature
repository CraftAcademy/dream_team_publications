Feature: User should be able to see articles
  As a subscriber
  In order to be able to read the articles
  I would like the articles to be displayed on the index page

  Background:
    Given the following articles exist
    | title               | body                  |
    | Holger is the best  | Dreamteam for the win |

  Scenario: User can see articles displayed
    Given I am on the "Index" page
    Then I should see "Holger is the best"
    And I should see "Dreamteam for the win"
