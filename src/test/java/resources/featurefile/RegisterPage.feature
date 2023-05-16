Feature: Register Page Test

  As a user I am able to register on the nop commerce website

  @Smoke @Regression
  Scenario: Verify user should navigate to Register page successfully
    Given  I am on homepage
    When   I click on register link
    Then   I am navigated to the Register page

  @Sanity @Regression
  Scenario Outline: Verify that Firstname Lastname email password and confirm password fields are mandatory
    Given  I am on homepage
    When   I click on register link
    And    I click on Register button
    Then   I should see error message "<error message>" for field "<field name>"
    Examples:
      | error message            | field name       |
      | First name is required.  | FirstName        |
      | Last name is required.   | LastName         |
      | Email is required.       | Email            |
      | Password is required.    | Password         |
      | Password is required.    | ConfirmPassword  |

  @Regression
  Scenario: Verify user should create account successfully
    Given I am on homepage
    When  I click on register link
    And   I select Gender "Male"
    And   I enter Firstname "Abc"
    And   I enter Lastname "Xyz"
    And   I enter date of birth day "11" month "January" year "1998"
    And   I enter email "Test123@gmail.com"
    And   I enter password "test123"
    And   I enter confirm password "test123"
    And   I click on Register button
    Then  I am registered successfully