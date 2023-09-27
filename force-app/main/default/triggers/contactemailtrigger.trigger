trigger contactemailtrigger on Contact (before delete, after undelete ) {

    if(trigger.isbefore || trigger.isdelete){
        
        
        EmailHelper.sendemail(trigger.old);
    }
    if(trigger.isafter || trigger.isundelete){
        
        EmailHelper.sendemail(trigger.old); 
    }
    
}