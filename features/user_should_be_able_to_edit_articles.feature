Feature: User should have the ability to edit articles
  As an publisher/journalist
  In order to keep the article fresh and up to date
  I would like to be able to edit an article

  Background:
    Given the following articles exist
      | title              | body                      |
      | Jade loves cookies | Brownies, I love Brownies |

    Given the following categories exist
      | name    |
      | Fashion |
      | Tech    |

    Given the following categories have been added to the articles
    | title                | category    |
    | Jade loves cookies   | Tech        |

  Scenario: User edits a article
    Given I am on the "Jade loves cookies" article page
    When I click on "Edit Article"
    And I fill in "Title" with "Holger is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    When I select "Fashion" from "Categories"
    And I click on "Submit Changes"
    Then I should be on the "Holger is the best" page
    And I should see "Holger is the best"
    And I should see "Dreamteam for the win!"

  Scenario: User edits a article and leave title empty
    Given I am on the "Jade loves cookies" article page
    When I click on "Edit Article"
    And I fill in "Title" with ""
    And I fill in "Content" with "Dreamteam for the win!"
    And I click on "Submit Changes"
    Then I should be on the "Jade loves cookies" page
    And I should see "Title can't be blank"

  Scenario: User edits a article and leave content empty
    Given I am on the "Jade loves cookies" article page
    When I click on "Edit Article"
    And I fill in "Title" with "Jade loves cookies"
    And I fill in "Content" with ""
    And I click on "Submit Changes"
    Then I should be on the "Jade loves cookies" page
    And I should see "Body can't be blank"

  Scenario: User edits a article and leave both title & content empty
    Given I am on the "Jade loves cookies" article page
    When I click on "Edit Article"
    And I fill in "Title" with ""
    And I fill in "Content" with ""
    And I click on "Submit Changes"
    Then I should be on the "Jade loves cookies" page
    And I should see "Title can't be blank Body can't be blank"

    Scenario: User edits a article and adds already existing category
      Given I am on the "Jade loves cookies" article page
      When I click on "Edit Article"
      And I fill in "Title" with "Holger is the best"
      And I fill in "Content" with "Im a h1 person ;)"
      And I select "Tech" from "Categories"
      And I select "Fashion" from "Categories"
      And I click on "Submit Changes"
      Then I should be on the "Holger is the best" page
      And I should see 2 "Tech"
