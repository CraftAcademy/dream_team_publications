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

      Scenario: Visitor fills in all fields except Email [Sad Path]
          Given I fill in "Password" with "hellooo"
          And I fill in "Password confirmation" with "hellooo"
          And I click on "Sign up"
          Then I should see "1 error prohibited this user from being saved: Email can't be blank"

        Scenario: Visitor fills in all fields except Password [Sad Path]
          Given I fill in "Email" with "john@smith.com"
          And I fill in "Password confirmation" with "hellooo"
          And I click on "Sign up"
          Then I should see "2 errors prohibited this user from being saved: Password can't be blankPassword confirmation doesn't match Password"

        Scenario: Visitor fills in all fields except Password confirmation [Sad Path]
          Given I fill in "Email" with "john@smith.com"
          And I fill in "Password" with "hellooo"
          And I click on "Sign up"
          Then I should see "1 error prohibited this user from being saved: Password confirmation doesn't match Password"

        Scenario: Visitor fills in invalid password
          When I fill in "Email" with "john@smith.com"
          And I fill in "Password" with "pas"
          And I fill in "Password confirmation" with "pas"
          And I click on "Sign up"
          Then I should see "1 error prohibited this user from being saved: Password is too short"
