Feature: User can create article with image attachment
  As an Author
  In order be able to add content to the news service
  I would like to be able to publish articles with an image

  Background:
    Given the following categories exist
      | name    |
      | Fashion |

  Scenario: Author creates an article
    Given I am on the "Create Article" page
    And I fill in "Title" with "David is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    And I select "Fashion" from "Categories"
    And I attach a file
    And I click on "Create Article"
    Then I should see "Article successfully created"
