public  class schedulableDemoApexClass implements schedulable {
 public void execute(SchedulableContext sc){
    insert new Contact(LastName = 'Dummy_Schedulable_Contact_'+system.now(),Phone = '12345');
   //something.
 }  
    }