public class accountupdatebatch implements database.Batchable<sObject> {
    
    public database.QueryLocator start(Database.BatchableContext bc ){
        
        database.QueryLocator a = database.getQueryLocator('select  Country__c from Account ');
        return a;
    
        
    }
        
    public void execute(Database.BatchableContext bc, List<account> acclist){
        for(account acc :acclist){
            acc.Country__c ='china';
        }
         update acclist;
    }
        
    public void finish(Database.BatchableContext bc){
        system.debug('update sucesfully');
    }

}