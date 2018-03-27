Feature: User should be able to create articles
  As a journalist
  In order to submit articles for publication approval
  I would like to be able to create an article on the site

  Background:
    Given the following categories exist
      | name    |
      | Fashion |
    And following user exist
      | email                 | role       |
      | visitor@email.com     | visitor    |
      | subscriber@email.com  | subscriber |
      | author@email.com      | author     |
      | admin@email.com       | admin      |
    And I am logged in as 'author@email.com'

  Scenario: User successfully creates an article
    And I am on the "Create Article" page
    When I fill in "Title" with "Holger is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    And I select "Fashion" from "Categories"
    And I attach a file
    And I click on "Create Article"
    Then I should see "Article successfully created"

  Scenario: User forgets to fill in content
    Given I am on the "Create Article" page
    When I fill in "Title" with "Holger is the best"
    And I click on "Create Article"
    Then I should see "Body can't be blank"

  Scenario: User forgets to fill in Title
    Given I am on the "Create Article" page
    When I fill in "Content" with "Dreamteam for the win!"
    And I click on "Create Article"
    Then I should see "Title can't be blank"


  Scenario: User forgets to fill in Title and content
    Given I am on the "Create Article" page
    When I click on "Create Article"
    Then I should see "Title can't be blank Body can't be blank"
