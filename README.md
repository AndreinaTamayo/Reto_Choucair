
# Reto_Choucair
Pruebas automatizadas
package Reto_Choucair;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
//import org.openqa.selenium.support.ui.Select;


public class MiTienda_Registro {

	private WebDriver driver;

	By registerLinkLocator = By.linkText("Sign in");
	By usernameLocator = By.id("email_create");
	By registerBtnLocator = By.name("SubmitCreate");

	By radioLocator = By.id("uniform-id_gender2");
	By usernomLocator = By.name("customer_firstname");
	By userapeLocator = By.name("customer_lastname");
	By Password = By.name("passwd");
	By diaLocator = By.name("days");
	By mesLocator = By.name("months");
	By anoLocator = By.name("years");
	By companyLocator = By.name("company");
	By direccionLocator = By.name("address1");
	By ciudadLocator = By.name("city");
	By EstadoLocator = By.name("id_state");
	By CodPostalLocator = By.name("postcode");
	By paisLocator = By.name("id_country");
	By telfLocator = By.name("phone_mobile");
	

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

		driver.findElement(usernameLocator).sendKeys("andreina@gmail.com");
		driver.findElement(registerBtnLocator).click();
		
		WebElement radio = driver.findElement(By.id("//input[@id='uniform-id_gender2']"));
	    radio.click();
		driver.findElement(usernomLocator).sendKeys("Andreina");
		driver.findElement(userapeLocator).sendKeys("Tamayo Martinez");
		driver.findElement(Password).sendKeys("123456");
		//Select dia = new Select (driver.findElement(By.name("dia")));
		//dia.selectByVisibleText("15");
	 
}

}
