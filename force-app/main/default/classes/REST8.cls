@restResource(urlMapping='/swhizz/hema/serviceeight/')
global class REST8 {
    @httpPost
    global static void getSomething(){
        system.debug('getSomething()method is executed.');
    }

}