Feature: Login Page Test
  As a user i want to Log in to the nop commerce website

  @Smoke @Regression
  Scenario: Verify user should be able to navigate to Login page successfully
    Given I am on homepage
    And   I click on the login link
    Then  I navigate to the Login page and see message "Welcome, Please Sign In!"

  @Sanity @Regression
  Scenario: Verify user should get error message on logging in with invalid credentials
    Given I am on homepage
    And   I click on the login link
    And   I enter invalid email address "testerhv123@gmail.com"
    And   I enter invalid password "password123"
    And   I click on login button
    Then  I get error message "Login was unsuccessful. Please correct the errors and try again."

  @Regression
  Scenario: Verify user should login successfully with valid credentials
    Given I am on homepage
    When  I click on register link
    And   I select Gender "Male"
    And   I enter Firstname "Abc"
    And   I enter Lastname "Xyz"
    And   I enter date of birth day "11" month "January" year "1996"
    And   I enter email "Test123@gmail.com"
    And   I enter password "test123"
    And   I enter confirm password "test123"
    And   I click on Register button
    And   I click on the login link
    And   I enter valid email address "Test123@gmail.com"
    And   I enter valid password "test123"
    And   I click on login button
    Then  I am logged in and I can see the logout link in the menu

  @Regression
  Scenario: Verify user should logout successfully
    Given I am on homepage
    And   I click on the login link
    And   I enter valid email address "Test123@gmail.com"
    And   I enter valid password "test123"
    And   I click on login button
    And   I click on the log out link
    Then  I am logged out of the account successfully