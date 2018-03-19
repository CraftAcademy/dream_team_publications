Feature: User can see a sidebar
As a User
In order to be able to read and navigate the site
I would like to have content and navigating tools on the index

  Scenario: User can see a sidebar
    Given I am on the "Index" page
    Then I should see "Sports"
    And I should see "Fashion"
    And I should see "Tech"
