@RestResource(urlMapping='/swhizz/hema/serviceone/')
global class Rest1 {
    @httpGet
    global static void dosomething(){
        system.debug('dosomething() method is executed.');
    }

}