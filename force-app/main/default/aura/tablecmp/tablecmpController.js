({
    Clickjs: function(component, event, helper) {
        console.log('=Clickjs=====');
        var action = component.get('c.fetchdata');

        action.setCallback(this, function(res) {
            if (res.getState() === 'SUCCESS') {
                console.log(res.getState());

                var contactsdata = res.getReturnValue();
                console.log(contactsdata);
                component.set("v.contactdata", contactsdata);
            } else {
                console.log('Error retrieving data');
            }
        });

        $A.enqueueAction(action);

    }
})