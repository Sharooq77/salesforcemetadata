trigger studenttrigger on Student__c (after insert ,after update) {
    
   
     if(trigger.isafter){
         
         
       set<id>avaliablebranchIds = new set<id>();
        set<id>unaliablebranchIds = new set<id>(); 
        
        for(Student__c stu : trigger.new){
            if(string.isNotBlank(stu.Branch__c)){
                if(stu.Status__c =='In'){
                    unaliablebranchIds.add(stu.Branch__c); 
                    
                }
                else{
                    avaliablebranchIds.add(stu.Branch__c);
                }
            }
            
        }
         
         if(trigger.isinsert){
             studenttrigger_helper.branchupdate(unaliablebranchIds, false);
     
             
         }
         
         else if(trigger.isupdate){
     
            studenttrigger_helper.branchupdate(avaliablebranchIds, true);
             
         }
     }
    
     
    
    
    
    
    
    
    
    
    
    
    
  /*  account acc = new account();
    acc.name ='studenttrigger'+math.random();
    insert acc;
                                                      // non setup object
    
    contact con = new contact ();
    con.lastname ='studenttrigger'+math.random();
    con.MobilePhone='9989117711';
    insert con ;
    
studenttriggerghelper.createpermissionset();*/
}