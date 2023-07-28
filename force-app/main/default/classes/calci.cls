public class calci {
    public Integer x=10;
    public Integer y=5;
    public void sum(){
        system.debug(x+ '+'+y+' = '+(x+y));
}
     public void difference(){
       system.debug(x+'-'+y+'= '+(x-y));
     }
     public void product(){
      system.debug(x+' * '+y+' = '+(x*y));
     }
     public void divideQuotient(){
        system.debug(x+' /'+y+' = '+(x/y));
     }
     public void divideRemainder(){
        system.debug(x+' % '+y+' = '+ Math.mod(x, y));

     }
     public void calculateeverything(){
        sum();
        difference();
        product();
        divideQuotient();
        divideRemainder();
}

    }