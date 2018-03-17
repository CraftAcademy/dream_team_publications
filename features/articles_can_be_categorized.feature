Feature: Article can be linked to a category
  As an owner
  In order to keep the site organized and easily navigated
  I would like to be able to categorize articles

  Background:
    Given the following articles exist
    | title                 | body                    |
    | Lara's style advise   | Get ready for spring    |

    And the following categories exist
    | subject   |
    | Fashion   |

  Scenario: User can categorize an article
    Given I am on the "Lara's style advise" article page
    When I select "Fashion" from "Categories"
    And I click on "Assign Category"
    Then I should see "Article succesfully categorized"
