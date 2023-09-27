public class permission{
    
    
    
    @future
    public static void createpermissionset(){
        
        permissionset pst = new permissionset();   //set-up object
        pst.Label = 'test permission';
        pst.Name= 'test_permission';
        insert pst; 
        
        
    
}
    
        
    }