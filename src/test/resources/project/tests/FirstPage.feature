Feature: Footer Section - Smoke Tests

  Scenario: Precondition Step
    Given the browser is opened
    When user navigates to "https://keyfood.ro/" page
    Then page "https://keyfood.ro/" is loaded successfully

  Scenario: Home Page - My Account page is successfully reached
    When user clicks my account button
    Then page "https://keyfood.ro/my-account-2/" is loaded successfully

  Scenario: My Account - Successfully login
    When successfully login
    Then confirmation button is displayed

  Scenario: Teardown
    Given the browser is closed
