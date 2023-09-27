public class soqlexample1 {
    
        public static void soqlmethod(){
        
        //list <datatype>variable = new list<datatype>[]
        list <account> acclist = [SELECT Id, Name, Phone, Active__c FROM Account];
        system.debug('acclist+'+acclist);                                            // standar object dont have data type name itself data type 
        
                 account acc = new account();
                 acc  = [select id, name, phone from account limit 1]; 
                 system.debug('accountsinglerecord'+acc );
    }
            public static void allaccountlist(){
            for( account acclist : [SELECT Id, Name, Phone, Active__c FROM Account limit 10]){
            system.debug('acclist1'+acclist);
            }
       
        }            
}