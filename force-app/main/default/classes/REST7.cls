@RestResource(urlMapping='/swhizz/hema/serviceseven/*')
global class REST7 {
    global class CustomerWrp{
        global string CustomerID{get;set;}
        global string CustomerName{get;set;}
        global string CustomerPhone{get;set;}
        global string CustomerFax{get;set;}
        global string CustomerEmail{get;set;}
        global list<CustomerContact> contactslist{get;set;}
    }
    global class CustomerContact{
        global string ConID{get;set;}
        global string ConSurname{get;set;}
        global string ConActualName{get;set;}
        global string ConPhone{get;set;}
        global string ConFax{get;set;}
        global string ConEmail{get;set;}
    }   
      @httpGet
    global static void returnAccountwithContacts(){
        RestRequest request=RestContext.request; 
        RestResponse response=RestContext.response;
 string requestedID=request.requestURI.subString(request.requestURI.lastIndexOf('/')+1);
        try{
            Account requestedAccount=[Select Id,Name,Phone,Fax,Email__c,
               (Select Id,FirstName,LastName,Phone,Fax,Email from Contacts)
               from Account Where unique_customer_Id__c=:requestedID];
          CustomerWrp obj=new CustomerWrp();
        obj.CustomerID=requestedAccount.ID;
        obj.CustomerName=requestedAccount.Name;
        obj.CustomerPhone=requestedAccount.Phone;
        obj.CustomerFax=requestedAccount.Fax;
        obj.CustomerEmail=requestedAccount.Email__c;
        Obj.ContactsList=new List<CustomerContact>();
        for(Contact con:requestedAccount.Contacts){
            CustomerContact conObj=new CustomerContact();
            conObj.ConId=con.Id;
            conObj.ConSurName=con.LastName;
            conObj.ConActualName=con.FirstName;
            conObj.ConPhone=con.Phone;
            conObj.ConFax=con.Fax;
            conObj.ConEmail=con.Email;
      Obj.ContactsList.add(ConObj);  
 }  
       String jsonBody=JSON.serializepretty(obj);
            response.statusCode=200;
            response.responseBody=Blob.valueOf(jsonBody);
        }catch(Exception e){
            String jsonBody='ERROR: something went wrong..please contact Administrator \n'+e.getMessage();
            response.statusCode=400;
            response.responseBody=Blob.valueOf(jsonBody);
            
            
        }
         }
}