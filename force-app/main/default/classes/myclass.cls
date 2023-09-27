public class myclass {
    integer a =10;  //instance variable
    static integer b= 20;
    static string name='sfdc';
    static {
        system.debug('static block=='+b);     //static block (1)
    }
   
    public myclass(){
        string name='salesforce';
        integer num =2023;
        system.debug('name=='+name);              // constructor (not write static variable, static print)
        system.debug('num=='+num);
        system.debug('static string string name=='+name+b);
    }
    
    public static  void  method1(){
        integer z= 50 ;    
        system.debug( z+'b local integer=='+b);      // debg only static variable (write local variable)
    }
    
    public void method2(){
        integer ine = 55;
        system.debug('static integer=='+b);            // void is not allowed on static( printed accept static)
    }
}