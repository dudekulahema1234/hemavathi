public class taxtype1lwc {
    
    @AuraEnabled(Cacheable = true)
    public static list<Tax__c> getTaxesData(String textkey) {
        textkey = '%' + textkey + '%';
        list<Tax__c> accLst = [SELECT  Id, Name, Tax_Rate__c,Tax_Type_Name__c From Tax__c WHERE Name LIKE :textkey];
        
        if(accLst.isEmpty()) {
            throw new AuraHandledException('No Record Found..');
        }
        return accLst; 
    }
    
}