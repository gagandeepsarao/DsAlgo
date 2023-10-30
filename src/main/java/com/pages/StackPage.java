package com.pages;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;



public class StackPage {
	
	private WebDriver driver;
	
	private By operationInStack_main = By.xpath("//a[@href='operations-in-stack']");
	private By implementation_main = By.xpath("//a[@href='implementation']");
	private By applications_main = By.linkText("Applications");

	
	
	
		public StackPage(WebDriver driver)
	{
		this.driver = driver;
	}
	
	public void navigatethru_mainPage(String pageName) {
		
		if(pageName.equalsIgnoreCase("Operations in Stack"))
		{
			driver.findElement(operationInStack_main).click();
		}
		else if(pageName.equalsIgnoreCase("Implementation"))
		{
			driver.findElement(implementation_main).click();
		}
		else if(pageName.equalsIgnoreCase("Applications"))
		{
			driver.findElement(applications_main).click();
		}
		else
			System.out.println("Page cannot be found-stack");
	}
	
	public String getInvalidCodeError()
	{
		Alert alertWindow = driver.switchTo().alert();
		String alerttext = alertWindow.getText();
		alertWindow.accept();
		return alerttext;
	}
	

}
