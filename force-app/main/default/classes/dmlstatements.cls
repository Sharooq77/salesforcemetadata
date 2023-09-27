@isTest
public class dmlstatements{
    
    public void createcontact(){
        
        contact obj =new contact();
        obj.FirstName = 'jamal';
        obj.LastName = 'basha';
        insert obj ;
     
        if(string.isNotBlank(obj.Id)){                  
            system.debug('contact is created');
        }
            else{
                system.debug('contact is not created');
            }
            
        }
    
   public  void updatecontact(){
       contact obj1 = new contact(id='0032w000011v7ItAAI');
       obj1.FirstName= 'basha';
       obj1.LastName = 'bhai';
       update obj1;
       if(string.isNotBlank(obj1.Id)){
            system.debug('contact is updatedcreated');
        }
            else{
                system.debug('contact is not updatecreated');
            }
            
}
    
    public void deletecontact(){
        contact obj1 = new contact(id='0032w000011v7ItAAI');
        delete obj1;
        if(string.isNotBlank(obj1.Id)){
            system.debug('contact is deleted');
        }
            else{
                system.debug('contact is not deleted');
            }
    } 
    public void undeletecontact(){
        contact obj1 = new contact(id='0032w000011v7ItAAI');
        undelete obj1;
         if(string.isNotBlank(obj1.Id)){
            system.debug('contact is undeleted');
        }
            else{
                system.debug('contact is not undeleted');
            }
     }
    public void undeleteall(){
        list<contact> obj2 = [select id from contact where isdeleted = true all rows];
        undelete obj2 ;
    }
    public  void updatedall(){
       list <contact> conupdatelist = new list <contact>() ;
        for(contact obj : [select LeadSource from contact]){
           obj.LeadSource = 'web';
            conupdatelist.add(obj) ;
            update conupdatelist;
            system.debug('con.Name'+conupdatelist);
        
        
        } 
    }
}