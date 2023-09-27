public class studenttrigger_helper {
    
    public static void branchavalibilty(set<Student__c> stutlist){
        
        set<id>avaliablebranchIds = new set<id>();
        set<id>unaliablebranchIds = new set<id>(); 
        
        for(Student__c stu : stutlist){
            if(string.isNotBlank(stu.Branch__c)){
                if(stu.Status__c =='In'){
                    unaliablebranchIds.add(stu.Branch__c); 
                    
                }
                else{
                    avaliablebranchIds.add(stu.Branch__c);
                }
            }
            
        }
    } 
    
    public static void branchupdate (set<id> branchIds,boolean is_avaliable){
        
        list<Branch__c> branc = new list<Branch__c>();
        for(Branch__c ban :[select is_avaliable__c from Branch__c where Id in :branchIds]){
            if(is_avaliable){
                ban.is_avaliable__c = true ;
                
            }
            else{
                ban.is_avaliable__c= false ;
            }
            branc.add(ban); 
        }
        
        update branc ; 
        
    }
    
    
    
}