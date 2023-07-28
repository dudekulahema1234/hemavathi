public class car {
    //properties ---> variables
    public String brand;
    public String color;
    public Integer noOfAirbags;
    public Boolean isElectric;
    //Actions --->Methods/Functions
     public void drive(){
        system.debug('car is driving on road .');
     }
   public void park(){
            system.debug('car is parked in garage.');
        }
        public void showSpecifications(){
            system.debug('Brand: '+brand);
            system.debug('Color: '+color);
            system.debug('Number Of Airbags: '+noOfAirbags);
            system.debug('Is Electric: '+isElectric);
        }
     }