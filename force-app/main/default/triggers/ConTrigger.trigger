trigger ConTrigger on Contact (before insert,after insert,before update,
after update,before delete,after delete,after undelete) {
    if(Trigger.isBefore && Trigger.isInsert){
        List<Contact> conList= Trigger.New;
        for(Contact con:conList){
            if(con.Phone == null){
                con.addError(' phone cannot be empty!!!');
            }
        }
    } else if(Trigger.isAfter && Trigger.isInsert){
    List<Contact> conList= Trigger.New;
    for(Contact con:conList){
        if(con.Fax == null){
            con.Fax = con.Phone;
        }
    }

update conList;
 }
}