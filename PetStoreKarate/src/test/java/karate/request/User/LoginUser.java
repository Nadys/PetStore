
package karate.request.User;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class LoginUser {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/User/6LoginUser/6LoginUser.feature").relativeTo(getClass());
    }
}



