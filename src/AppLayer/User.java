package AppLayer;

import dataLayer.DB_User;

public class User {
    public boolean IsValidCredentials(String username, String password){
        DB_User obj_db_user = new DB_User();
        if(obj_db_user.IsvalidUser(username,password)){
            return true;
        }
        return  false;
    }
    public boolean IsValidCredentials1(String username){
        DB_User obj_db_user1 = new DB_User();
        if(obj_db_user1.IsvalidUser1(username)){
            return true;
        }
        return  false;
    }
}
