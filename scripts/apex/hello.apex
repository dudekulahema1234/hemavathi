// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents
DailyTasks.PerformTasks();
Database.executeBatch(new privateContactsAttachBatchClass(), 20);//1 Least 2000 is the max and 200 
Contact con = new contact(LastName='Test_Queue_1',Phone='12345');
SampleQueueableAC obj = new SampleQueueableAC(con);
//string JobIds = system.enqueueJob(obj);
//system.debug('Queueable Job Id :' + jobIds);
string JobID = system.enqueueJob(new QueueableApexClass1());
system.debug('Queueable Job ID :' + JobID);
Account a1 = new Account(Name='TT Account 1',Phone='0123456789',Fax='12345',Email__c='darshan@gmail.com'); 
Account a2 = new Account(Name='TT Account 2',Phone='0123456789',Fax='12345',Email__c='darshan@gmail.com'); 
insert a1; insert a2;
Contact c1 = new Contact(lastName = 'TT Contact 1'phone = '0123456789'accountId= a1.id);
Contact c2 = new Contact(lastName = 'TT Contact 2'phone = '0123456789'accountId= a1.id);
Contact c3 = new Contact(lastName = 'TT Contact 3'phone = '0123456789'accountId= a1.id);
Contact c4 = new Contact(lastName = 'TT Contact 4'phone = '0123456789'accountId= a2.id);
Contact c5 = new Contact(lastName = 'TT Contact 5'phone = '0123456789'accountId= a2.id);
Contact c6 = new Contact(lastName = 'TT Contact 6'phone = '0123456789'accountId= a2.id);
insert c1; insert c2; insert c3; insert c4; insert c5; insert c6;
Case cs1 = new Case(subject = 'TT Case 1', status = 'New', origin = 'phone', ContactId = c1.id );
Case cs2 = new Case(subject = 'TT Case 2', status = 'New', origin = 'phone', ContactId = c1.id );
Case cs3 = new Case(subject = 'TT Case 3', status = 'New', origin = 'phone', ContactId = c2.id );
Case cs4 = new Case(subject = 'TT Case 4', status = 'New', origin = 'phone' );
Case cs5 = new Case(subject = 'TT Case 5', status = 'New', origin = 'phone', ContactId = c4.id );
Case cs6 = new Case(subject = 'TT Case 6', status = 'New', origin = 'phone', ContactId = c5.id );
Case cs7 = new Case(subject = 'TT Case 7', status = 'New', origin = 'phone', ContactId = c5.id );
Case cs8 = new Case(subject = 'TT Case 8', status = 'New', origin = 'phone', ContactId = c5.id );
Case cs9 = new Case(subject = 'TT Case 9', status = 'New', origin = 'phone', ContactId = c6.id );
insert cs1; insert cs2;  insert cs3;  insert cs4;  insert cs5;  insert cs6;  insert cs7; 
insert cs8;  insert cs9; 
car c1 = new car();
system.debug('car1: '+c1);
c1.brand = 'BMW';
c1.color = 'white';
c1.noOfAirbags = 8 ;
c1.isElectric = false;
system.debug('car1: '+c1);
c1.drive();
c1.park();
c1.showSpecifications();
car c2 = new car();
system.debug('car2: '+c2);
c2.brand = 'Maruthi Suzuki';
c2.color = 'black';
c2.noOfAirbags=2;
c2.isElectric= true;
system.debug('car2: '+c2);
c2.drive();
c2.park();
c2.showSpecifications();
calci obj1 = new calci();
obj1.calculateeverything();
calci obj2 = new calci();
obj2.x=20;
obj2.y=10;
obj2.calculateeverything();
sumcalculator obj1 = new sumcalculator();
obj1.sum1();
obj1.sum1();
sumcalculator obj1 = new sumcalculator();
Integer result1 = obj1.sum2();
Integer result2 = obj1.sum2();
system.debug(result1);
system.debug(result2);
sumcalculator obj1 = new sumcalculator();
obj1.sum3(10,20);
obj1.sum3(90,40);
obj1.sum3(80,50);
sumcalculator obj1 = new sumcalculator();
Integer result1 = obj1.sum4(2,9);
system.debug('Result1: '+result1);
Integer result2 = obj1.sum4(10,90);
system.debug('Result2: '+result2);
system.debug('Result3: '+obj1.sum4(30,90));
List<Account> acclist = [select Email__c,Fax from Account];
system.debug('Name/tEmail');
for(Account acc:acclist){
system.debug('acc.Name'+'/t'+'acc.Email__c'+'/t''acc.Fax');
}
Integer x = 10;
Exceptiondemoapexclass.myMethod();



