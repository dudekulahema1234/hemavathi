trigger AccountTrigger on Account (before insert,after insert,before update,after update,
before delete,after delete,after undelete) {
    if(Trigger.isBefore && Trigger.isDelete){
        Id currentUsersId = UserInfo.getUserId();
        for(Account acc:Trigger.old){
            if(acc.OwnerId !=currentUsersId){
                acc.addError('you are not authorized to delete this record');
            }
        }
    }else if(Trigger.isAfter && Trigger.isUpdate){
set<Id> expiredAccSet = new set<Id>();
 for(Account acc:Trigger.new){
    Account oldVersionAcc = Trigger.OldMap.get(acc.Id);
    if(acc.service_status__c== 'Expired' && acc.service_status__c!=oldVersionAcc.service_status__c){
        ExpiredAccset.add(acc.Id);
    }
 }
  if(!expiredAccSet.isEmpty()){
    List<Contact> ExpiredAccconList =[select Id,(Select Id,Status From Cases)From Contact 
    Where AccountId In:expiredAccSet];
    List<case> toupdatecaseList = new  List<case> ();
    for(Contact con:ExpiredAccconList){
        for(case cs:con.Cases){
            if(cs.status!='closed'){
                cs.status = 'closed';
                toupdatecaseList.add(cs);
            }
        }
}
 if(!toupdatecaseList.isEmpty()){
    update toupdatecaseList;
 }
    }
    }
}