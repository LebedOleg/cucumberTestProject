package cucumberTestProject;

import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(features= {
        "src/test/resources/features/Ict4appsCreateAccountPage.feature"
}
)

public class DefinitionTestSuite_CreateNewAccount {}