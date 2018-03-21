Feature: User should be able to see articles
  As a subscriber
  In order to be able to read the articles
  I would like the articles to be displayed

  Background:
    Given following user exist
      | email                 | role       |
      | visitor@email.com     | visitor    |
      | subscriber@email.com  | subscriber |
      | author@email.com      | author     |
      | admin@email.com       | admin      |

    And the following articles exist
      | title               | body                  |
      | David is the best   | Dreamteam for the win |

  Scenario: User can see articles displayed
    Given I am logged in as 'subscriber@email.com'
    And I am on the "David is the best" article page
    Then I should see "David is the best"
    And I should see "Dreamteam for the win"

  Scenario: User is not a subscriber and tries to visit an article
    Given I am logged in as 'visitor@email.com'
    And I try to visit the 'David is the best' article-page
    Then I should be redirected to the Homepage
    And I should see 'Aja baja!'
