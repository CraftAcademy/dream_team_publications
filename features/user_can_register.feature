Feature: User can register
As a user
In order to access my account
I would like to have a signup/login function

Background:
  Given I am on the "index" Page
  When I click on "Register"

  Scenario: User can successfully register
      Given I am on the "Subscriber" Page
      When I fill in "Email" with "user@user.com"
      And I fill in "Password" with "password123"
      And I fill in "Password confirmation" with "password123"
      And I click on "Sign up"
      Then I should see "Welcome! You have signed up successfully"
