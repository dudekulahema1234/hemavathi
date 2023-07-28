public class Exceptiondemoapexclass {
    public static void myMethod(){
        system.debug('welcome');
       try{
        system.debug(5/0);
        system.debug('done');
       }catch(MathException e){
        system.debug('Error: Denominator cannot be zero');
}
        system.debug('bye');
    }

    }