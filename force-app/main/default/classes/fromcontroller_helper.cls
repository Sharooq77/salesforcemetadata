public class fromcontroller_helper {
    public  static id contactcreate(string name, string Phone){
         account acc = new account ();
        acc.Name =name;
        acc.Phone=Phone;
        insert acc;
        
        return acc.id ;
        
        
    }

}