package karate.request.Pet;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

@KarateOptions(features = "classpath:Karate/request/Pet/1AddnewPet/1AddnewPet.feature", tags = {"@ignoreScenario", "@ignoreScenarioOutline"})
public class AddnewPet {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/Pet/1AddnewPet/1AddnewPet.feature").relativeTo(getClass());
    }

}

