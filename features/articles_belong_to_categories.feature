Feature: Article can be linked to a category
  As an owner
  In order to keep the site organized and easily navigated
  I would like to be able to categorize articles

  Background:
    Given following user exist
      | email                 | role       |
      | author@email.com      | author     |
    And the following categories exist
      | name    |
      | Fashion |
    And I am logged in as 'author@email.com'

  Scenario: User can categorize an article
    Given I am on the "Create Article" page
    When I select "Fashion" from "Categories"
    And I fill in "Title" with "Holger is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    And I click on "Create Article"
    Then I should see "Article successfully created"
    And I should see "Fashion"
    When I am on the "Index" page
    And I should see "Fashion"

  Scenario: User tries to create article without assigning it to a catagory
    Given I am on the "Create Article" page
    When I fill in "Title" with "Holger is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    And I click on "Create Article"
    Then I should see "Categories can't be blank"
