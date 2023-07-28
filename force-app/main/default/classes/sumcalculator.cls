/*
 * @author: Hema
 */ 
public class sumcalculator {
    //This class is for understanding types of methods
    Integer x = 10;
    Integer y = 20;
    //Method without return type and without parameters
    public void sum1(){
        system.debug('sum of x & y is '+(x+y));

    }
    //Method with return type and without parameters
    public Integer sum2(){
    Integer result = x+y;
    return result;
}
     //Method without return type and with parameters
     public void sum3(Integer a,Integer b){
        system.debug('sum of a & b is '+(a+b));
     }
      //Method with returntype and with parameters
      public Integer sum4(Integer a,Integer b){
       return a+b;

      }

    

}