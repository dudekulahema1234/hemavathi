@RestResource(urlMapping='/swhizz/hema/serviceeleven/')
global class REST11 {
    public class jsonCon{
        public String ActualName{get;set;}
        public String SurName{get;set;}
        public String MobileNumber{get;set;}
        public String FaxNumber{get;set;}
        public String PersonalEmail{get;set;}
}
 
    @httpPost
    global static void getSomething(){
        RestRequest request = RestContext.request;
        RestResponse response = RestContext.response;
        String requestBody = request.requestBody.toString();
      jsonCon obj = (jsonCon) JSON.deserialize(requestBody,jsonCon.class);
        system.debug('Recieved Body::'+requestBody);
        system.debug('Recieved Body transformed::'+obj);
        contact con = new contact();
            con.FirstName=obj.ActualName;
            con.LastName=obj.SurName;
            con.Phone=obj.MobileNumber;
            con.Fax=obj.FaxNumber;
            con.Email=obj.PersonalEmail;
        system.debug('jsonCon converted to contact::'+con);
        try{
            insert con;
            String jsonBody = con.FirstName+' '+con.LastName+'successfully created.';
            response.statuscode = 200;
            response.responseBody =Blob.valueOf(jsonBody);
        }catch(Exception e){
         String jsonBody = 'An unfortunate error occurred:'+e.getMessage();
            response.statusCode = 400;
            response.responseBody = Blob.valueOf(jsonBody);
        }
        
        
    
    }
}