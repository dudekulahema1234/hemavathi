public class QueueableApexClass1 implements Queueable{
    public void execute(QueueableContext qc){
        bank_account__c bcc = new bank_account__c();
         bcc.Name = 'Queue_1';
         insert bcc;
         system.enqueueJob(new QueueableApexClass2(bcc));
    }
    

    }