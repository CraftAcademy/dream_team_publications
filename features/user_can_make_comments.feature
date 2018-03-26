Feature: User should be able to add a comment
  As a subscriber
  In order to voice my opinion on an article
  I would like to be able to leave a comment

  Background:
    Given following user exist
      | email                 | role       |
      | visitor@email.com     | visitor    |
      | subscriber@email.com  | subscriber |
      | author@email.com      | author     |
      | admin@email.com       | admin      |

    And the following articles exist
      | title              | body                  |
      | David is the best  | Dreamteam for the win |

    And I am logged in as 'author@email.com'

  Scenario: User successfully creates a comment
    Given I am on the "David is the best" article page
    When I fill in "Comment" with "This article makes me tingly"
    And I click on "Add Comment"
    Then I should see "This article makes me tingly"

  Scenario: User fails to add a comment
    Given I am on the "David is the best" article page
    When I click on "Add Comment"
    Then I should see "Body can't be blank"
