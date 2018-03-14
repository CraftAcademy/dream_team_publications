Feature: User should be able to create articles
  As a journalist
  In order to submit articles for publication approval
  I would like to be able to create an article on the site

  Scenario: User successfully creates an article
    Given I am on the "Create Article" Page
    Then I fill in "Title" with "Holger is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    Then I click on "Create Article"
    And I should see "Article successfully created"

  Scenario: User forgets to fill in content
    Given I am on the "Create Article" Page
    Then I fill in "Title" with "Holger is the best"
    Then I click on "Create Article"
    And I should see "Body can't be blank"

  Scenario: User forgets to fill in Title
    Given I am on the "Create Article" Page
    And I fill in "Content" with "Dreamteam for the win!"
    Then I click on "Create Article"
    And I should see "Title can't be blank"


  Scenario: User forgets to fill in Title
    Given I am on the "Create Article" Page
    Then I click on "Create Article"
    And I should see "Title can't be blank Body can't be blank"
