package pageObjects;

import org.apache.commons.logging.Log;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class MyAccountPage {
    public WebDriver driver;

    public MyAccountPage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    @FindBy(xpath = "//input[@id='username']")
    public WebElement userNameField;
    @FindBy(xpath = "//input[@id='password']")
    public WebElement passwordField;
    @FindBy(xpath = "//button[@type='submit']")
    public WebElement loginButton;

    @FindBy(xpath = "//*[contains(text(),'Log out')]")
    public WebElement confirmationButton;

    public void loginMethod(String username, String password) {
        userNameField.sendKeys(username);
        passwordField.sendKeys(password);
        loginButton.click();
    }
}
