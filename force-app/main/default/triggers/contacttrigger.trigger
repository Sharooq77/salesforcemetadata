trigger contacttrigger on Contact (before insert,before update) {
    
    if(trigger.isbefore){
        if(trigger.isinsert ||trigger.isupdate ){
            
            for(contact c :trigger.new){
                if(string.isBlank(c.mobilephone)){
                    c.mobilephone.adderror('mobile number is mandatory');
                } 
                 else if(trigger.isupdate){
             SL_contacthelpertrigger.updatecontact(trigger.new);
            }
        }
       
        }
        
    }  
        
    }