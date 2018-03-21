@javascript
Feature: User can pay for a subscription using stripe
  As a user
  In order to access the full content of articles
  I would like to be able to pay for a subscription to the site

  Background:
    Given following user exist
    | email             | subscriber |
    | random@random.com | false      |

    And I am logged in as "random@random.com"
    And I am on the 'Index' page
    And I click on "Pay for subscription"

  Scenario: User successfully pays for subscription
    Given I click on Stripe button "Pay with Card"
    And I fill in Stripe field "Card number" with "4242 4242 4242 4242"
    And I fill in Stripe field "CVC" with "123"
    And I fill in Stripe field "Expiry" with "12/2021"
    And submit the Stripe form
    Then I should see "You are now subscribed!"
    And "random@random.com" should be a subscriber

  Scenario: User provides incorrect input
    Given I click on Stripe button "Pay with Card"
    And I fill in Stripe field "Card number" with "4242 4242 4242 4241"
    And I fill in Stripe field "CVC" with "123"
    And I fill in Stripe field "Expiry" with "12/2021"
    And submit the Stripe form
    Then I should not see "You are now subscribed!"
