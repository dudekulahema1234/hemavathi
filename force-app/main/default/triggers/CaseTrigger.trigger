trigger CaseTrigger on case (before insert,after insert,before update,
after update,before delete,after delete,after undelete) {
    if (Trigger.isBefore && Trigger.isInsert){

    }else if(Trigger.isAfter && Trigger.isInsert){
        List<FeedItem> itemsList = new List<FeedItem>();
         for(case cs: Trigger.New){
            if(cs.Status == 'New' && cs.Priority == 'High' && cs.Reason =='Breakdown' && cs.AccountId!=null){
                FeedItem item = new FeedItem();
                item.title = 'Important Chatter post for Case :'+cs.CaseNumber;
                item.Body = 'DearSalesReps,\n\tA new case with casenumber '+cs.CaseNumber+ 'and Subject:'
                               +cs.Subject+'\n has been created. \n Please take care of it.\n\n----\n posted by Trigger ';         
                item.ParentId = cs.Id;
                itemsList.add(item);
         }
    }
        if(!itemsList.isEmpty()){
            insert itemsList;
        }
}
}