Feature: User should be able to create articles
    As a journalist
    In order to submit articles for publication approval
    I would like to be able to create an article on the site

Scenario:
    Given I am on the "Create Article" Page
    Then I fill in "Title" with "Holger is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    Then I click on "Create Article"
    And I should see "Article successfully created"

