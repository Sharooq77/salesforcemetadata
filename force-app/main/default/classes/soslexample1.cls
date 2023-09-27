public class soslexample1 {
    
    public soslexample1(){
        
        soslexample obj = new soslexample();
        
        system.debug(obj.recordlist);
        
        for(Sobject rec : obj.recordlist[0]){
        
              contact con=(contact)rec ;
                  system.debug(con.Name+'==='+con.Email);
        }
        
        
        
        
        
        
        
        
        
    }

}