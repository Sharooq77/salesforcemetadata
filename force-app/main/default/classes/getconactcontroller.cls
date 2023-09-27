public class getconactcontroller {
    @AuraEnabled
    public static list<contact> gettingcontact(){
        return [select id,name,email,phone from contact];
    }

}