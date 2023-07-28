global class PrivateContactAttachBatchClass implements Database.Batchable<SObject>{
    
        global Database.QueryLocator start(Database.BatchableContext bc){
         system.debug('START');
         String query='Select Id From Contact';
         return Database.getQueryLocator(query);
        }
        global void Execute(Database.BatchableContext bc, List<Contact> recordList){
            system.debug('EXECUTE');
        } 
        global Void Finish(Database.BatchableContext bc){
        system.debug('FINISH');
        }
         
        
}