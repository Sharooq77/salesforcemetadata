({
    savecontact: function(component, event, helper) {
        var fn = component.get("v.fname");
        var ln = component.get("v.lname");

        var action = component.get("c.savecontactrecord");
        action.setParams({
            "fname": fn,
            "lname": ln
        });

        action.setCallback(this, function(response){
            
            console.log(response.getState());
        }); 

        $A.enqueueAction(action);
    }
})