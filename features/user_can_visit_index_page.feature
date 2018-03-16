Feature: User should be able to visit index page
  As a user
  In order to navigate the site and have information displayed to me
  I would like to be able to see things on the index page

  Scenario: User visits the site for the first time
    Given I am on the "Index" page
    Then I should see "Dream Team Publications"
