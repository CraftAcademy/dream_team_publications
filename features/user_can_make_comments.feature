Feature: User should be able to add a comment
  As a subscriber
  In order to voice my opinion on an article
  I would like to be able to leave a comment

  Background:
    Given the following articles exist
    | title               | body                  |
    | Holger is the best  | Dreamteam for the win |

  Scenario: User successfully creates a comment
    Given I am on the "Holger is the best" page
    When I fill in "Comment" with "This article makes me tingly"
    And I click on "Add Comment"
    Then I should see "This article makes me tingly"
