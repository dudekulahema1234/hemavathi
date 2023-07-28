public class QueueableApexClass2 implements Queueable{
    bank_account__c bacc;
    public QueueableApexClass2 (bank_account__c bacc){
        this.bacc = bacc;
    }
      public void execute(QueueableContext qc){

      
        deposit_account__c dcc = new deposit_account__c();
         dcc.Name = 'Queue_1';
         dcc.bank_account__c = bacc.Id;
         insert dcc;
    }
    

    }