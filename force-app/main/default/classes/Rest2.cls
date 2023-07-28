@RestResource(urlMapping='/swhizz/hema/servicetwo/')
global class Rest2 {
    @httpGet
    global static string returncompanyname(){
        return'CG power & industrial solutions limited';
    }

}