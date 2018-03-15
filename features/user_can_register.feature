Feature: User can register
As a user
In order to access my account
I would like to have a signup/login function

    Background:
      Given the following user exist
        | email         | password    | password_confirmation |
        | user@user.com | password123 | password123           |

      Given I am on the "index" Page
      When I click on "sign up"
      Then I should be redirected to "Subscriber" Page

    Scenario: User can register
      When I fill in "Email" with "user@user.com"
      And I fill in "Password" with "password123"
      And I fill in "Password confirmation" with "password123"
      And I click on "sign up"
      Then I should be redirected to 'index' Page
      And I should see "Welcome! You have signed up successfully"
