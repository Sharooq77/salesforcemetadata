({
    allocateMemory : function(component, event, helper) {
        
        component.find("contactnewform").getNewRecord(
            'Contact',
            null,
            false,
            $A.getCallback(function(result){
                
            }));
        
    },
    
    createContact : function(component, event, helper) {
        component.find("contactnewform").saveRecord(function(result){
            if(result.state == 'SUCCESS'){
                helper.showToastmassage('contact saved successlly','success','sticky'); 
            }
            else{
                helper.showToastmassage('contact not created','error','sticky');  
            }
            
        });
        
    }
    
    
})