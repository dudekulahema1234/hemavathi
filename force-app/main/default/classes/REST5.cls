@RestResource(urlMapping='/swhizz/hema/servicefive/*')
global class REST5 {
    @httpGet
    global static Account returnAccountwithContacts(){
        RestRequest request=RestContext.request;
        string reqestURI = request.requestURI;
        string requestedID=request.requestURI.subString(request.requestURI.lastIndexOf('/')+1);
        system.debug('REQUEST::'+request);
        system.debug('REQUESTURI::'+reqestURI);
        system.debug('REQUESTED UNIQUE ID::'+requestedID);
        return[Select Id,Name,Phone,Fax,Email__c,
               (Select Id,FirstName,LastName,Phone,Fax,Email from Contacts)
               from Account Where unique_customer_Id__c=:requestedID];
    }
}