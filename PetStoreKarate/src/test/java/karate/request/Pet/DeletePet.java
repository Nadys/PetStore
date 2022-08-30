package karate.request.Pet;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class DeletePet {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:Karate/request/Pet/4DeletePet/4DeletePet.feature").relativeTo(getClass());
    }
}


