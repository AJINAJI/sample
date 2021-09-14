package com.stepdef;

import java.util.concurrent.TimeUnit;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class Stepdef {
	WebDriver driver;

	@Given("verify user on the adaction page")
	public void verify_user_on_the_adaction_page() {
		WebDriverManager.chromedriver().setup();
		driver = new ChromeDriver();
		driver.get("https://adactinhotelapp.com/");
		driver.manage().window().maximize();
	}

	@When("verify the login page {string} and {string} should be click")
	public void verify_the_login_page_and_should_be_click(String username, String password) {
		driver.findElement(By.id("username")).sendKeys(username);
		driver.findElement(By.id("password")).sendKeys(password);
		driver.findElement(By.id("login")).click();
	}

	@When("verify the hotel search page {string} and  {string} and {string}  and  {string} and  {string} and  {string} and  {string} and  {string}  should click search button")
	public void verify_the_hotel_search_page_and_and_and_and_and_and_and_should_click_search_button(String Location,
			String Hotels, String RoomType, String Rooms, String InDate, String OutDate, String Adults,
			String Children) {
		driver.findElement(By.id("location")).sendKeys(Location);
		driver.findElement(By.id("hotels")).sendKeys(Hotels);
		driver.findElement(By.id("room_type")).sendKeys(RoomType);
		driver.findElement(By.id("room_nos")).sendKeys(Rooms);
		driver.findElement(By.id("datepick_in")).sendKeys(InDate);
		driver.findElement(By.id("datepick_out")).sendKeys(OutDate);
		driver.findElement(By.id("adult_room")).sendKeys(Adults);
		driver.findElement(By.id("child_room")).sendKeys(Children);
		driver.findElement(By.id("Submit")).click();

	}

	@When("verify select Hotel  and click continue")
	public void verify_select_Hotel_and_click_continue() {
		driver.findElement(By.id("radiobutton_0")).click();
		driver.findElement(By.id("continue")).click();
	}

	@When("verify the personal Deatils {string} and {string} and {string} and  {string} and  {string} and  {string} and  {string} and  {string} bokking confirmation")
	public void verify_the_personal_Deatils_and_and_and_and_and_and_and_bokking_confirmation(String FirstName,
			String LastName, String Address, String CardNo, String CardType, String ExpiryDate, String Expiryyear,
			String CVV) {
		driver.findElement(By.id("first_name")).sendKeys(FirstName);
		driver.findElement(By.id("last_name")).sendKeys(LastName);
		driver.findElement(By.id("address")).sendKeys(Address);
		driver.findElement(By.id("cc_num")).sendKeys(CardNo);
		driver.findElement(By.id("cc_type")).sendKeys(CardType);
		driver.findElement(By.id("cc_exp_month")).sendKeys(ExpiryDate);
		driver.findElement(By.id("cc_exp_year")).sendKeys(Expiryyear);
		driver.findElement(By.id("cc_cvv")).sendKeys(CVV);
		driver.findElement(By.id("book_now")).click();
	}

	

	@Then("user should verify success message")
	public void user_should_verify_success_message() throws InterruptedException {
		driver.manage().timeouts().implicitlyWait(4000, TimeUnit.SECONDS);
		WebElement orderId = driver.findElement(By.id("order_no"));
		String attribute = orderId.getAttribute("value");
		System.out.println(attribute);
		Assert.assertTrue("verified", true);
		driver.quit();
	}

}
