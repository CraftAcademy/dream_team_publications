Feature: User can create article with image attachment
  As an Author
  In order be able to add content to the news service
  I would like to be able to publish articles with an image

  Background:
    Given following user exist
     | email                 | role       |
     | author@email.com      | author     |

   And the following categories exist
     | name    |
     | Fashion |

   And I am logged in as 'author@email.com'

  Scenario: Author creates an article
    Given I am on the "Create Article" page
    When I fill in "Title" with "David is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    And I select "Fashion" from "Categories"
    And I attach a file
    And I click on "Create Article"
    Then I should see "Article successfully created"
