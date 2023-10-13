package com.qa.factory;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.safari.SafariDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class DriverFactory {

	public WebDriver driver;
	
	public static ThreadLocal<WebDriver> tlDriver = new ThreadLocal<>();
	
	/**
	 * This method is used to initialize the threadlocal driver on the basis of given browser
	 * 
	 * @param browser
	 * @return this will return tldriver
	 */
	
	public WebDriver init_driver(String browser)
	{
		//System.out.println("browser value is:"+System.getenv("BROWSER"));
		//System.out.println("NUMBER_OF_PROCESSORS is:"+System.getenv("NUMBER_OF_PROCESSORS"));
		
		browser = System.getenv("BROWSER");
		
		if(browser.equals("chrome"))
		{
			WebDriverManager.chromedriver().setup();
			//System.setProperty("webdriver.chrome.driver","../../Downloads/chromedriver-mac-x64/chromedriver");
			//System.out.println("Updating Chrome Version");

			tlDriver.set(new ChromeDriver());
		}
		else if(browser.equals("firefox"))
		{
			WebDriverManager.firefoxdriver().setup();
			tlDriver.set(new FirefoxDriver());
		}
		else if(browser.equals("safari"))
		{
			tlDriver.set(new SafariDriver());  
		}
		else {
			System.out.println("Please pass the correct browser value " + browser);
		}
			
		getDriver().manage().deleteAllCookies();
		getDriver().manage().window().maximize();
		return getDriver();
	}
	/**
	 * this method is used to get the driver with ThreadLocal
	 * synchronized keyword is used to synchronize the multiple WebDriver if they run parallel
	 * @return
	 */
	public static synchronized WebDriver getDriver() {
		
		return tlDriver.get();
		
	}
	
	
	
	
}
 
