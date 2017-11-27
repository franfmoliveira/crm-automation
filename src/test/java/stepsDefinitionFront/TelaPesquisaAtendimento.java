package stepsDefinitionFront;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;


public class TelaPesquisaAtendimento {

    WebDriver driver;

    @Given("^eu acessar a URL do CRM$")
    public void eu_acessar_a_URL_do_CRM() throws Throwable {

        System.setProperty("webdriver.firefox.marionette", "/usr/local/bin/geckodriver");
        driver = new FirefoxDriver();
        driver.get("https://zup.dev.crm.zup.me/auth/login.html?redirectTo=https://zup.dev.crm.zup.me/crm/");
        driver.manage().window().maximize();
    }

    @Given("^eu for direcionado para a tela de login do RW$")
    public void eu_for_direcionado_para_a_tela_de_login_do_RW() throws Throwable {

            // TO DO

    }

    @Given("^eu digitar o user$")
    public void eu_digitar_o_user() throws Throwable {

        driver.findElement(By.id("uid")).sendKeys("admin@zup.me");

    }

    @Given("^eu digitar a senha$")
    public void eu_digitar_a_senha() throws Throwable {

        driver.findElement(By.id("password")).sendKeys("S3cr3tS");
    }

    @Given("^eu clicar no botao de acessar$")
    public void eu_clicar_no_botao_de_acessar() throws Throwable {

        driver.findElement(By.xpath("//*[@id=\"login-form\"]/div[2]/button")).click();
        Thread.sleep(3000);
    }
    @Given("^eu ser direcionado para a tela de pesquisa do CRM$")
    public void eu_ser_direcionado_para_a_tela_de_pesquisa_do_CRM() throws Throwable {

        WebDriverWait wait = new WebDriverWait(driver, 30);
        WebElement checar;
        checar = wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("#root > div > div > div.search-page-content > div > div.radio-custom > ul > li.no-gutter-l > label > span")));

    }

    @Given("^eu clicar no botão de idiomas$")
    public void eu_clicar_no_botão_de_idiomas() throws Throwable {

//        WebElement phone = driver.findElement(By.cssSelector("#root > div > div > div.search-page-content > div > div.radio-custom > ul > li:nth-child(2) > label > input"));
//        phone.click();


    }

    @Given("^eu clicar na opcao ingles$")
    public void eu_clicar_na_opcao_ingles() throws Throwable {

    }

    @Then("^as labels da tela devem ficar todas em ingles$")
    public void as_labels_da_tela_devem_ficar_todas_em_ingles() throws Throwable {

    }

    @Given("^eu clicar na opcao frances$")
    public void eu_clicar_na_opcao_frances() throws Throwable {

    }

    @Then("^as labels da tela devem ficar todas em frances$")
    public void as_labels_da_tela_devem_ficar_todas_em_frances() throws Throwable {

    }

    @Given("^eu clicar no menu superior$")
    public void eu_clicar_no_menu_superior() throws Throwable {

    }

    @Given("^e eu clicar no botao de Administrador$")
    public void e_eu_clicar_no_botao_de_Administrador() throws Throwable {

    }

    @Then("^eu devo ser direcionado para a URL do CRM Admin$")
    public void eu_devo_ser_direcionado_para_a_URL_do_CRM_Admin() throws Throwable {

    }


}
