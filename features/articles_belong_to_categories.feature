Feature: Article can be linked to a category
  As an owner
  In order to keep the site organized and easily navigated
  I would like to be able to categorize articles

  Background:
    Given the following categories exist
      | name    |
      | Fashion |

  Scenario: User can categorize an article
    Given I am on the "Create Article" page
    And show me the page
    When I select "Fashion" from "categories"
    And I fill in "Title" with "Holger is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    And I click on "Create Article"
    Then I should see "Article successfully created"
    And I should see "Fashion"
    And I am on the "Index" page
    And I should see "Fashion"

  Scenario: User tries to create article without assigning it to a catagory
    Given I am on the "Create Article" page
    When I fill in "Title" with "Holger is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    And I click on "Create Article"
    Then I should see "Categories can't be blank"
