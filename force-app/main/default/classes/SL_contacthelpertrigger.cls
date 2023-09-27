public class SL_contacthelpertrigger {
    
    public static void updatecontact(list<contact> conlist){
    
        for(contact con : conlist){
            if(!con.FirstName.endswith('kumar')){
               con.FirstName= con.FirstName+ 'kumar'; 
            }
               
        }
        
        
        
    } 

}