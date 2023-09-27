({
    sum : function(component, event, helper) {
        
        var a = component.get ("v.fvalue");
        var b = component.get ("v.svalue");
        var c = parseInt(a) + parseInt(b);
        var msg =a +' and'+   b +  'the sum result is: '+c;
        
        component.set("v.result",msg);
    } ,
    sub : function(component, event, helper) {
        
        var a = component.get ("v.fvalue");
        var b = component.get ("v.svalue");
        var c = parseInt(a) - parseInt(b);
        var msg = 'the sub result is:+' +a +' and'+   b +'is'  +c;
        
        component.set("v.result",msg);
    },
    mul: function(component, event, helper) {
        
        var a = component.get ("v.fvalue");
        var b = component.get ("v.svalue");
        var c = parseInt(a) * parseInt(b);
        var msg =a +' and'+   b +  'the mul result is: '+c;
        
        component.set("v.result",msg);
    }
    
})