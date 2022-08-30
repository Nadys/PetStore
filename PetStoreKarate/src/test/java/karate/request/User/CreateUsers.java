package karate.request.User;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

@KarateOptions(features = "classpath:Karate/request/User/5CreateUser/5CreateUsers.feature", tags = {"@ignoreScenario", "@ignoreScenarioOutline"})
public class CreateUsers {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/User/5CreateUser/5CreateUsers.feature").relativeTo(getClass());
    }
}


