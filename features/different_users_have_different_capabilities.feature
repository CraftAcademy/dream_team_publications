Feature: A user can have different roles with different capabilities
  As a owner
  In order to control which type of user is authorized to do what
  I want to be able to set authorization status to different account types

  Background:
    Given following user exist
    | email                 | role       |
    | visitor@email.com     | visitor    |
    | subscriber@email.com  | subscriber |
    | author@email.com      | author     |
    | admin@email.com       | admin      |

  Scenario: User is an author
    Given I am logged in as 'author@email.com'
    Given I am on the 'Create Article' page
    When I fill in 'Title' with 'David is the best'
    And I fill in 'Content' with 'Dreamteam for the win!'
    And I select 'Fashion' from 'Categories'
    And I click on 'Create Article'
    Then I should see 'Article successfully created'
