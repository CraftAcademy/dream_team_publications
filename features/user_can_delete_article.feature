Feature: User should be able to delete articles
  As a publisher/journalist
  In order to trim content from the site
  I would like to be able to delete articles

  Background:
    Given the following articles exist
    | title               | body                  |
    | Holger is the best  | Dreamteam for the win |

  Scenario: User can delete an article
    Given I am on the "Holger is the best" article page
    When I click on "Delete Article"
    Then I should see "Holger is the best has been deleted"
    And I should be on the "Index" page
