Feature: User can see a sidebar
  As a User
  In order to be able to read and navigate the site
  I would like to have content and navigating tools on the index

  Scenario: User clicks register in navbar
    Given I am on the "Index" page
    And I should see "Dreamteam Publications"
    When I click on "Register"
    And I should be on the "Subscriber" page

  Scenario: User clicks register in navbar
    Given I am on the "Index" page
    And I should see "Dreamteam Publications"
    When I click on "Login"
    And I should be on the "Login" page
