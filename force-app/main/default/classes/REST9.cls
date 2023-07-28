@restResource(urlMapping='/swhizz/hema/servicenine/')
global class REST9 {
    @httpPost
    global static void getSomething(){
        RestRequest request = restContext.request;
        String requestBody = request.requestBody.toString();
        system.debug('RequestBody::/n'+requestBody);
    }

}