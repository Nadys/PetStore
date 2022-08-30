package karate.request.Pet;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;
@KarateOptions(features = "classpath:Karate/request/Pet/2UpdatePet/2UpdatePet.feature", tags = {"@ignoreScenario", "@ignoreScenarioOutline"})
public class UpdatePet {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/Pet/2UpdatePet/2UpdatePet.feature").relativeTo(getClass());
    }
}


