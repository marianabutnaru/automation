package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import static io.cucumber.junit.CucumberOptions.SnippetType.CAMELCASE;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "html:target/cucumber.html", "summary"},
        snippets = CAMELCASE,
        tags = "@Scenario1",
        glue = {"hooks", "stepDef"}
)
public class JUnitRunnerTest {
    @BeforeClass
    public static void beforeClass() {
        System.out.println("In before class");
    }

    @AfterClass
    public static void afterClass() {
        System.out.println("In after class");
    }
}
