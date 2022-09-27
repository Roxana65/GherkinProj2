Feature: Footer Section - Smoke Tests

  Scenario: Precondition Step
    Given the browser is opened
    When user navigates to "page.mainPage" page
    Then page "page.mainPage" is loaded successfully

  Scenario: Home Page - My Account page is successfully reached
    When user clicks on "headerOptions.myAccount" button
    Then page "page.myAccount" is loaded successfully

  Scenario: My Account - Successfully login
    When user enters "login.username" and "login.password" credentials
    And user clicks on "login.loginButton" button
    Then "login.confirmation" is displayed

  Scenario: Teardown
    Given the browser is closed
