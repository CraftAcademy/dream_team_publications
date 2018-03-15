Feature: User should have the abillity to edit articles
  As an publisher/journalist
  In order to keep the article fresh and up to date
  I would like to be able to edit an article

Background:
Given the following articles exist
| title             | body                      |
| Jade loves cookies | Brownies, I love Brownies |


Scenario: User edits a article
Given I am on the "Jade loves cookies" page
When I click on "Edit Article"
And I fill in "Title" with "Jade loves SailorCookie"
And I fill in "Content" with "Dreamteam for the win!"
And I click on "Submit Changes"
Then I should be on the "Jade loves SailorCookie" page
And I should see "Jade loves SailorCookie"
And I should see "Dreamteam for the win!"
