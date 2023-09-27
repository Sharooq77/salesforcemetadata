public class processoppty {
 
    
public static void accountupdate (list<account> newlist , map<id, account> oldmap){
    
    for(account acc : newlist){
        
        if(oldmap != null && acc.Phone!=oldmap.get(acc.Id).phone){
           acc.Description ='phone is modified on account'; 
        }
        
    }
    
    
        
    }
    
    
    
}