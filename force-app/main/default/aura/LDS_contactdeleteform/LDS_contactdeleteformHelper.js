({
    
    showToastmassage : function(msg, typ,md) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            
            "message": msg,
            "type":typ,
            "mode": md
        });
  
        toastEvent.fire();
        
    }
    
    
})