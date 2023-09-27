({
	caliculateresult : function(component, event, helper) {
		var a =  parseInt(component.get("v.fvalue"));
        var b = parseInt(component.get("v.svalue"));
        var msg;
        
        var evt = event.getSource().getLocalId();
        
        if(evt=='sumbutton'){
             
         msg =a +' and'+   b +  'the sum result is: '+(a+b);
        }
        else if(evt=='subbutton'){
           
      msg =a +' and'+   b +  'the sub result is: '+(a-b);
        }
        
        else if(evt=='mulbutton'){
        msg =a +' and'+   b +  'the mul result is: '+(a*b);   
        }
        component.set("v.result",msg);
	}
})