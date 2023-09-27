public class myatmclass {
    
    public decimal amount=0;
    
    public myatmclass(string cardholdername,decimal balanceamount){             //constructor
        
       amount = balanceamount;
        
        system.debug('HI==' + cardholdername + ',WELCOME TO AXIS BANK!');         
     }
    
    public void balanceenquiry(){
        
        system.debug('your balance is=='+amount);
    }
    
    public void withdrwal(decimal requestamount){
        system.debug('requestamount'+ requestamount);
           amount =  amount-requestamount;
        system.debug('uapdatedamount=='+amount);               
    }    
    
    public void deposit (decimal depositamount){
        system.debug('depositamount=='+depositamount);
        amount = amount+depositamount;
        system.debug('total balance=='+amount);
    }
}




// myatmclass obj = new myatmclass('jamal',5500);   call caling
//obj.balanceenquiry();
//obj.withdrwal(500);
//obj.deposit(1000);