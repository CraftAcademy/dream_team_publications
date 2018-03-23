@javascript
Feature: User sees edition based on their location
  As a visitor
  In order to get localized news
  I would like the application to know where I am

  Background:
    Given the following articles exist
      | title                             | latitude    | latitude  |
      | This is a swedish article, hej!   | 59.334591   | 18.063240 |
      | This is a canadian article, hello | 48.4284     | 123.3656  |

    Given following user exist
    | email             | address                                        |
    | random@random.com | Jakobsbergsgatan 17, 111 44 Stockholm, Sverige |

    And I am logged in as "random@random.com"

  Scenario: User is in Gøteborg
    Given I am at the latitide: "59.334591", longitude: "18.063240"
    When I am on the "Index" page
    Then I should see "Sweden Edition"

  Scenario: User is in Canada
    Given I am at the latitide: "48.4284", longitude: "123.3656"
    When I am on the "Index" page
    Then I should see "World Edition"

  Scenario: User in Sweden sees swedish article
    Given I am at the latitide: "59.334591", longitude: "18.063240"
    When I am on the "Index" page
    Then I should see "Sweden Edition"
    And I should see "This is a swedish article, hej!"
