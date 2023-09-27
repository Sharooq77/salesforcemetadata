public class tablecmpcontroller {
    
    @AuraEnabled
    public static list<contact> fetchdata(){
        return [select id,Name,Email from contact];
    }

}