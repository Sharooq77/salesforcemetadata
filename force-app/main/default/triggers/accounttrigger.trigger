trigger accounttrigger on Account (after update ) {
    
    List<Id> accIds = new List<Id>();
    for(account acc :trigger.new){
        if(acc.Rating=='Hot'){
            accIds.add(acc.Id);
        }
    }
    
     map<string,object> flowparam = new map<string,object>();
    flowparam.put('accountlist'  , accIds);
     Flow.Interview.updatecase flowobj=new  Flow.Interview.updatecase(flowparam);
    flowobj.start();
 
 
   
    }
//
     // list <account> accoun = new list<account>();
  // for (account acc : trigger.new){
    //   system.debug('===='+acc.rating); 
    
   // if(acc.AnnualRevenue<=10000){
        
        //acc.Rating='cold';
   //  }
   // else{
       // acc.Rating='hot';
        //}
   // }
    //if(trigger.isbefore){
      //  if(trigger.isupdate){
          //  processoppty.accountupdate(trigger.new ,trigger.oldmap);
      //  }
   // }