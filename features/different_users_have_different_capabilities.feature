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
    And the following categories exist
      | name    |
      | Fashion |
    Given the following articles exist
      | title              | body                      |
      | Jade loves cookies | Brownies, I love Brownies |

  Scenario: User is an author and is able to create an article
    Given I am logged in as 'author@email.com'
    And I am on the 'Create Article' page
    When I fill in 'Title' with 'David is the best'
    And I fill in 'Content' with 'Dreamteam for the win!'
    And I select 'Fashion' from 'Categories'
    And I click on 'Create Article'
    Then I should see 'Article successfully created'

  Scenario: User is a visitor and tries to visit the create article page
    Given I am logged in as 'visitor@email.com'
    And I try to visit the 'Create Article' page
    Then I should be redirected to the Homepage
    And I should see 'Aja baja!'

  Scenario: User is not a subscriber and tries to visit an article
    Given I am logged in as 'visitor@email.com'
    And I try to visit the 'Jade loves cookies' article-page
    Then I should be redirected to the Homepage
    And I should see 'Aja baja!'

  Scenario: User is a subscriber and tries to visit an article
    Given I am logged in as 'subscriber@email.com'
    And I try to visit the 'Jade loves cookies' article-page
    Then I should see 'Jade loves cookies'
