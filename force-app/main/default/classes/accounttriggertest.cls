@isTest
public class accounttriggertest {
    @isTest
    public static void testmethod1(){
      account acc= new account ();
        acc.name='triggertest';
        insert acc;
        
       account ac= [select Rating from account where id=:acc.Id];
           ac.Rating='Hot';
        update ac;
    }

}