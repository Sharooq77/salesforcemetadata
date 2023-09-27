trigger opptyamountfiled on Opportunity (before insert,before update) {
    
    list<opportunity> opplist= new list<opportunity>();
    
    for(opportunity opp: trigger.new){
       
        if( opp.Amount>=10000 && opp.StageName!='ClosedWon'){
            opp.CloseDate=date.today();
            opp.StageName='ClosedWon';
        }
        opplist.add(opp);
    }
            
    }