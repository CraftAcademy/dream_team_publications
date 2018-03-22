Feature: Website should contain news from API
  As a owner
  In order to provide more articles for users to read
  We would like to pull articles from other sources using an API

  Scenario: User visit the Index page
    Given I am on the "Index" page
    Then I should see 5 articles
