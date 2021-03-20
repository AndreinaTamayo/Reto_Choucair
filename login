package Reto_Choucair;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class MiTienda_login {
	
	private WebDriver driver;

	By registerLinkLocator = By.linkText("Sign in");
	By userEmail  = By.id("email");
	By Password = By.name("passwd");
	By Btnsignin = By.name("SubmitLogin");


	@Before
	public void setUp() throws Exception {
		System.setProperty("webdriver.chrome.driver", "./src/test/resources/Chromedriver/chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("http://automationpractice.com/index.php");
}
	
	@After
	public void tearDown() throws Exception {
		// driver.quit();
	}

	@Test
	public void registroUsuario() throws InterruptedException {
		driver.findElement(registerLinkLocator).click();
		Thread.sleep(2000);

		driver.findElement(userEmail).sendKeys("ingantama@gmail.com");
		driver.findElement(Password).sendKeys("123456");
		driver.findElement(Btnsignin).click();
		
	}

}
