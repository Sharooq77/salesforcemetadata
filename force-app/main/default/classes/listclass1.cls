public class listclass1 {
    
    public void listmethod(){
        
        list<string> names= new  list<string>{'jamal','nikhil','sai','ajay', 'akhil','navya'};
            
        names.add('sharuk1');
        names.add('sharuk2');
        names.add('sharuk3');
        names.add('sharuk4');
        system.debug('get name'+names.get(0));
        
        list<string> names1= new  list<string>();
        names1=names.clone();
        system.debug('names1'+names1);
        
        names.remove(2);
        system.debug('remove'+names);
        names.size();
        system.debug('remove list'+names);
        
        names.sort();
        system.debug('sort'+names);
        
        
    }
    
}