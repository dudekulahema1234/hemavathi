@RestResource(urlMapping='/swhizz/hema/servicethree/')
global class Rest3 {
  @httpGet
    global static ACCOUNT returncompanyname(){
        return[Select Id,Name,Phone,Fax,Email__c from ACCOUNT WHERE Unique_Customer_Id__c='12345'];
    }
}