Feature: Article are displayed under correct category
  As a journalist/publisher
  In order to organize my articles so readers can find them by topic
  I would like to be able to see the articles in separate category page views

  Background:
    Given following user exist
      | email                 | role       |
      | author@email.com      | author     |

    And the following categories exist
      | name    |
      | Fashion |

    And I am logged in as 'author@email.com'

  Scenario: User can create an article and see it display under category
    Given I am on the "Index" page
    When I click on "Write an Article"
    And I select "Fashion" from "Categories"
    And I fill in "Title" with "David is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    And I attach a file
    And I click on "Create Article"
    And I click on "Fashion"
    Then I should see "David is the best"
    And I should see "Dreamteam for the win!"
