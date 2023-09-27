({
    getcon : function(component, event, helper) {
        
        var action = component.get("c.gettingcontact");// step 1
        
        action.setCallback(this,function(response){ //step 2
            var state =  response.getState();
            if(state=='SUCCESS'){
               var returndata= response.getReturnValue();
                component.set("v.contactli",returndata);
            }
            
            
        });
        
        $A.enqueueAction(action);    //step 3
    }
})