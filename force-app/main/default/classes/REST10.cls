@RestResource(urlMapping='/swhizz/hema/serviceten/')
global class REST10 {
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
        insert con;
        
    }
}