Feature: Computer Page Test
  As a user I want to use the different features on the Computer Page

  @Smoke @Regression
  Scenario: Verify user should navigate to Computer Page successfully
    Given I am on homepage
    When  I click on Computers menu tab
    Then  I am navigated to the Computers page successfully

  @Sanity @Regression
  Scenario: Verify user should navigate to Desktops Page successfully
    Given I am on homepage
    When  I click on Computers menu tab
    And   I click on Desktops sub menu
    Then  I am navigated to the Desktops page successfully

  @Regression
  Scenario Outline: Verify user should be able to Build Your Own Computer and add product to cart successfully
    Given I am on homepage
    When  I click on Computers menu tab
    And   I click on Desktops sub menu
    And   I select Product Build your own computer
    And   I select Processor "<processor>"
    And   I select Ram "<ram>"
    And   I select HDD "<hdd>"
    And   I select OS "<os>"
    And   I select Software "<software>"
    And   I click on add to cart button
    Then  The product is added to cart successfully

    Examples:
      | processor                                       | ram           | hdd               | os                      | software                   |
      | 2.2 GHz Intel Pentium Dual-Core E2200           | 2 GB          | 320 GB            | Vista Home [+$50.00]    | Microsoft Office [+$50.00] |
      | 2.5 GHz Intel Pentium Dual-Core E2200 [+$15.00] | 4GB [+$20.00] | 400 GB [+$100.00] | Vista Premium [+$60.00] | Acrobat Reader [+$10.00]   |
      | 2.5 GHz Intel Pentium Dual-Core E2200 [+$15.00] | 8GB [+$60.00] | 320 GB            | Vista Home [+$50.00]    | Total Commander [+$5.00]   |