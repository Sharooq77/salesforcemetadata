public class all_loops {
    public static void loopmethod(){
       
    integer i = 1;
    while (i<10){
        
        system.debug('whileloop'+i);
        i++;
    }
        do{
            system.debug('dowhile loop'+i);
            i--;   
          }while(i>10);
          
        for(i=1;i<=10;i++){
           system.debug('forloop'+i); 
             } 
        list<string> account = new   list<string>{'raju','jamal','sai'};
            for(string str:account){
                system.debug('totalnames'+str);
                
                if('raju'=='raju'){
                    system.debug('passed');
                }
                    
            }
        
    }  
    
}