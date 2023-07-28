trigger UserTrigger on User (before update) {
    if(Trigger.isBefore  && Trigger.isUpdate){
        UserTriggerHandler.doBeforeUpdate(Trigger.new,Trigger.newMap,Trigger.old,Trigger.oldMap,Trigger.size);
    }

}