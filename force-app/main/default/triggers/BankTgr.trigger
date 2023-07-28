trigger BankTgr on BANK__c (before insert,after insert,before update,
                            after update,before delete,after delete,after undelete) {
   system.debug('NEW:'+Trigger.new);
       system.debug('NEW MAP'+Trigger.newMap);
       system.debug('OLD'+Trigger.old);
       system.debug('OLD MAP'+Trigger.oldMap);
       

}