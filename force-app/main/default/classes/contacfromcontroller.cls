public class contacfromcontroller {
    
    @AuraEnabled
    public static void savecontactrecord(String fname, String lname){
        Contact c = new Contact();
        c.FirstName = fname;
        c.LastName = lname;
        insert c;
    }
}