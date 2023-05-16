package nopCommerce.demo.pages;

import nopCommerce.demo.utility.Utility;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

public class DesktopPage extends Utility {

    private static final Logger log = LogManager.getLogger(DesktopPage.class.getName());

    public DesktopPage() {
        PageFactory.initElements(driver, this);
    }

    @CacheLookup
    @FindBy(css = "div[class='page-title'] h1")
    WebElement pageTitle;

    @CacheLookup
    @FindBy(id = "products-orderby")
    WebElement sortBy;

    @CacheLookup
    @FindBy(id = "products-pagesize")
    WebElement display;

    @CacheLookup
    @FindBy(xpath = "//div[@class='products-container']//h2/a")
    List<WebElement> productTitleList;


    public String getPageTitleText() {
        String message = getTextFromElement(pageTitle);
        log.info("Get pageTitle text " + pageTitle.toString());
        return message;
    }

    public void selectSortBy(String position) {
        log.info("Sort by '" + position + sortBy.toString());
        selectByVisibleTextFromDropDown(sortBy, position);
    }

    public void selectDisplayPerPage(String number) {
        log.info("Display product '" + number + display.toString());
        selectByVisibleTextFromDropDown(display, number);
    }

    public void selectProduct(String productName) {
        for (WebElement product : productTitleList) {
            if (product.getText().equals(productName)) {
                log.info("Click on product '" + productName + productTitleList.toString());
                clickOnElement(product);
                break;
            }
        }
    }
}
