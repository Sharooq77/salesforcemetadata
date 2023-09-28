public class collectionmap {
    
    public void mapmethod(){
        
        map<string,integer>nameandnum = new  map<string,integer>{'jamal'=>1,'nikhil'=>2}; 
        // change by test1
            
         system.debug('nameandnum=='+nameandnum);
        // put method
        nameandnum.put('sai',3);
        nameandnum.put ('vamsi',4);
        system.debug(' totalnameandnum=='+nameandnum);
        // changes can be test2
        
        //size method
        nameandnum.size();
        system.debug('size=='+nameandnum.size());
        
        //contain method
        nameandnum.containskey('reddy');
        system.debug('containskey=='+  nameandnum.containskey('reddy'));
        
        //clone method
        map<string,integer>nameandnum1 = new  map<string,integer>();
        nameandnum1=nameandnum.clone();
        system.debug('nameandnum1=='+nameandnum1);
        
        //equals method
        nameandnum1.equals(nameandnum);
        system.debug('equals=='+ nameandnum1.equals(nameandnum));
        
        //keyset method
        nameandnum.keyset();
        system.debug('keyset==' +  nameandnum.keyset());
        
        //values method
        nameandnum.values();
        system.debug('values==' +  nameandnum.values());
        
        //remove method
        nameandnum.remove('jamal');
        system.debug('removekey==' +   nameandnum.remove('jamal'));
        
        //clear method
        nameandnum.clear();
        system.debug('clear==='+ nameandnum);
        system.debug('empty==='+ nameandnum.isempty());       // collectionmap obj = new  collectionmap();
                                                              //obj.mapmethod();
        
    }
    
}