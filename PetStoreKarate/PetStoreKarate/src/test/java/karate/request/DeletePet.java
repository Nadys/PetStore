package karate.request;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class DeletePet {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:Karate/request/DeletePet.feature").relativeTo(getClass());
    }
}


