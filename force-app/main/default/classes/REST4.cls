@RestResource(urlMapping='/swhizz/hema/servicefour/*')
global class REST4 {
    @httpGet
    global static ACCOUNT returnACCOUNTwithCONTACTS(){
        return[Select Id,Name,Phone,Fax,Email__c,
               (Select Id,FirstName,LastName,Phone,Fax,Email From CONTACTS)
               From ACCOUNT Where Unique_Customer_Id__c='12345'];
    }
}