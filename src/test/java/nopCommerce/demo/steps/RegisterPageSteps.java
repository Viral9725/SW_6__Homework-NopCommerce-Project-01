package nopCommerce.demo.steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import nopCommerce.demo.pages.HomePage;
import nopCommerce.demo.pages.RegisterPage;
import org.junit.Assert;

public class RegisterPageSteps {
    @When("^I click on register link$")
    public void iClickOnRegisterLink() {
        new HomePage().clickOnRegisterLink();
    }

    @And("^I select Gender \"([^\"]*)\"$")
    public void iSelectGender(String gender){
        new RegisterPage().selectGender(gender);
    }

    @And("^I enter Firstname \"([^\"]*)\"$")
    public void iEnterFirstname(String firstname){
        new RegisterPage().enterFirstName(firstname);
    }

    @And("^I enter Lastname \"([^\"]*)\"$")
    public void iEnterLastname(String lastname){
        new RegisterPage().enterLastName(lastname);
    }

    @And("^I enter date of birth day \"([^\"]*)\" month \"([^\"]*)\" year \"([^\"]*)\"$")
    public void iEnterDateOfBirthDayMonthYear(String day, String month, String year){
        new RegisterPage().selectDateOfBirth(day, month, year);
    }

    @And("^I enter email \"([^\"]*)\"$")
    public void iEnterEmail(String email){
        new RegisterPage().enterEmail(email);
    }

    @And("^I enter password \"([^\"]*)\"$")
    public void iEnterPassword(String password){
        new RegisterPage().enterPassword(password);
    }

    @And("^I enter confirm password \"([^\"]*)\"$")
    public void iEnterConfirmPassword(String confirmPassword){
        new RegisterPage().enterConfirmPassword(confirmPassword);    }

    @And("^I click on Register button$")
    public void iClickOnRegisterButton() {
        new RegisterPage().clickOnRegisterButton();
    }

    @Then("^I am navigated to the Register page$")
    public void iAmNavigatedToTheRegisterPage() {
        Assert.assertEquals("Register page Text not displayed", "Register", new RegisterPage().getRegisterText());
    }

    @Then("^I should see error message \"([^\"]*)\" for field \"([^\"]*)\"$")
    public void iShouldSeeErrorMessageForField(String errorMessage, String fieldName)  {
        Assert.assertEquals(fieldName+ "field error message not displayed", errorMessage , new RegisterPage().getValidationErrorMessageForField(fieldName));
    }

    @Then("^I am registered successfully$")
    public void iAmRegisteredSuccessfully() {
        Assert.assertEquals("Registration is not successful","Your registration completed",new RegisterPage().getYourRegCompletedText());
    }
}
