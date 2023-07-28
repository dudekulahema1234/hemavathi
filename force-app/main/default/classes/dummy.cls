public class dummy {
    public List<CustomObjectWrapper> retrieveData() {
        List<CustomObjectWrapper> result = new List<CustomObjectWrapper>();
        
        try{
              // Perform SOQL query to retrieve the data
            List<CustomObject__c> records = [SELECT Field1__c, Field2__c FROM CustomObject__c];
        
            // Map the queried records to the wrapper class
            for (CustomObject__c record : records) {
                CustomObjectWrapper wrapper = new CustomObjectWrapper(
                    field1,
                    field2);
                    records.add(wrapper);
        }catch(Exception){
            throw new throw new AuraHandledException('e.getMessage');
        }
        return result; 
        }
        
        
    }
    
}