public class Exceptiondemoapexclass {
    public static void myMethod(){
        system.debug('welcome');
       try{
        system.debug(5/2);
        List<Integer> numList = new List<Integer>{10,40,30};
        system.debug(numList.get(3));
        system.debug('done');
       }catch(MathException e){
        system.debug('Error: Denominator cannot be zero');
       }catch(ListException e){
        system.debug('Exception Raised: '+e);
        system.debug('Exception Message: '+e.getMessage());
        system.debug('Exception Stack Trace: '+e.getStackTraceString());
       }catch(Exception e){
        system.debug('Exception Raised: '+e);
        system.debug('Exception Message: '+e.getMessage());
        system.debug('Exception Stack Trace: '+e.getStackTraceString());
       }finally{
    system.debug('bye');
}
    
    }
}

    