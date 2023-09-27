public class fromcontroller {
    
    public string name {set;get;}
    public integer AnnualRevenue {set;get;}
    public string Phone{get;set;}
    public boolean isdisplay{get;set;}
    
    public pageReference createaccount(){
       ID accid= fromcontroller_helper.contactcreate(name,Phone);
        pageReference pr = new pageReference('https://www.amazon.com');
        return pr; 
    }
    public  void createaccount1(){
          ID accid= fromcontroller_helper.contactcreate(name,Phone);
        if(accid != null){
           isdisplay= true ;
        }
    }    
    public pageReference loadfrom(){
        isdisplay =false ; 
        pageReference pr = new pageReference('https://d2w00000krqlnear-dev-ed--c.develop.vf.force.com/apex/myfristvfpage?core.apexpages.request.devconsole=1');
        return pr; 
        
    }
}