trigger opptytrigger on Opportunity (before  insert,before update) {
    


    if(trigger.isbefore){
        if( trigger.isupdate){
            processoppty.oppupdate(trigger.new ,trigger.oldmap);
            
        }
        
    }
}