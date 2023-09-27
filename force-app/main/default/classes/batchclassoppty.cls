public class batchclassoppty  implements database.Batchable<sObject>{
 
    
     public database.QueryLocator start(Database.BatchableContext bc ){
        
        database.QueryLocator li = database.getQueryLocator('select amount from opportunity') ;
        return li;
            
    
        
    }
        
    public void execute(Database.BatchableContext bc, List<opportunity> opplist){
        
        list<opportunity> opp = new list<opportunity> ();
        for(opportunity oppty :opplist){
            oppty.amount = oppty.amount + oppty.amount*0.08 ;
            opp.add(oppty);
        }
         update opp;
    }
        
    public void finish(Database.BatchableContext bc){
        system.debug('amount update succesfully');
    }


}