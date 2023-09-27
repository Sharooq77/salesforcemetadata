/*public class soslexample {
    
    public soslexampledmlstatements.undeleterecord(); () { // constructor can be made 
        
        for(list<Sobject> listrecords : [find 'test' in all fields returning account(name,phone),contact(name,email),student__c(name)]){
            
            system.debug('listrecords=='+listrecords); // we have bulk of records so we can create the for loops 
        }
        
    }
    
}*/

public class soslexample{
                               // this code can use from another class so this reason we can add the instance variable ,
    public soslexample(){
        
        list<list<Sobject>> listrecords = [find 'test' in all fields returning account(name,phone),contact(name,email),student__c(name)];
            
            system.debug('listrecords=='+listrecords[0]);
           system.debug('listrecords=='+listrecords[1]);
           system.debug('listrecords=='+listrecords[2]);
          
            
        } 
    }