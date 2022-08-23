package karate.request;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class FindPetById {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/3FindPetById.feature").relativeTo(getClass());
    }
}
