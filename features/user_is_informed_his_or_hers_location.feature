Feature: User is informed about his or hers location
  As a visitor
  In order to get localized news
  I would like the application to know where I am

  Scenario: User is in Gøteborg
    Given I am at the latitide: "59.334591", longitude: "18.063240"
    And I visit the site
    Then I should see "Gøteborg Edition"
