({
	updatecontact : function(component, event, helper) {
		alert('update contact');
        
        component.find("contactrecord").saveRecord(function(result){
            console.log(result.state);
            if(result.state == 'SUCCESS'){
                helper.showToastmassage('contact updated success','success','sticky'); 
            }
            else{
                 helper.showToastmassage('contact not created','error','sticky');  
            }
        });
	}
})