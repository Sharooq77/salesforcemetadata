({
	   deleteContact : function(component, event, helper) {
           component.find("deletecon").deleteRecord($A.getCallback(function(result){
                if(result.state == 'SUCCESS'){
                helper.showToastmassage('contact delete successlly','success','sticky'); 
            }
            else{
                helper.showToastmassage('contact not delete created','error','sticky');  
            }
               
           }));
           
            
     
    }
})