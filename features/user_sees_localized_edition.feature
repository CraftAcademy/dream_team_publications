@javascript
Feature: User sees edition based on their location
  As a visitor
  In order to get localized news
  I would like the application to know where I am

  Scenario: User is in Gøteborg
    Given I am at the latitide: "59.334591", longitude: "18.063240"
    And I am on the "Index" page
    Then I should see "Sweden Edition"

  Scenario: User is in Canada
    Given I am at the latitide: "48.4284", longitude: "123.3656"
    And I am on the "Index" page
    Then I should see "World Edition"
