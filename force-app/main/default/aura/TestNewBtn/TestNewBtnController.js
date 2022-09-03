({
    closeModel : function(component, event, helper) {
        component.set("v.isOpen", false);
        if (component.get("v.recordId") != null) {
            var navEvt = $A.get("e.force:navigateToSObject");
            navEvt.setParams({
                "recordId": component.get("v.recordId"),
                "slideDevName": "detail"
            });
            navEvt.fire();
        } else {
            window.history.back();
        }
    }

    
})
