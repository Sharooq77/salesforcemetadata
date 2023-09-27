public class conditionalsstatements{
    public static void method(string usernameinput, string passwordinput){
        
        string username= 'sharuk@gmail.com';
        string password= 'sha@123';
        
        if(username!= usernameinput && password !=passwordinput){
            
            system.debug('your user name and password both are wrong ');    
        }
        else if (username != usernameinput){
            system.debug('your user name should be  wrong');
            }
        else if (password != passwordinput){
            system.debug('your password should be  wrong');
        }
        
        else {
            
            system.debug('you are logged in ');
        }
}

    
}