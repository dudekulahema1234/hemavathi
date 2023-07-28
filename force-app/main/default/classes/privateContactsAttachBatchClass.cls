global class privateContactsAttachBatchClass implements Database.Batchable<SObject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('START');
        String Query =  'Select Id From Contact';
       return  Database.getQueryLocator(Query);
    }
    global void execute(Database.BatchableContext bc, List<Contact> recordList){
      system.debug('EXECUTE');
    }
    global void finish(Database.BatchableContext bc){
        system.debug('FINISH');
    }

    }