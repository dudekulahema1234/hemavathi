public class taxtypeslwc {
    
    @AuraEnabled
    public static List<Tax__c> getaxes(string searchName)
    {
        List<Tax__c> taxList = [select id,Tax_Type_Name__c,Description__c,Tax_Rate__c from Tax__c
                                    where Tax_Type_Name__c like : searchName+'%'with Security_Enforced ];
           return taxList;    
                                
    }
}