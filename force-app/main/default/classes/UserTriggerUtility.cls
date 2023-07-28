public  class UserTriggerUtility {
    public static void doValidateUser(List<user> userslist){
        for(user u: userslist){
            if(u.Superior__c == null && !u.IsActive){
                u.IsActive.addError('you cannot deactivate a user who is not having superior .');

            }

        }
        

    }
      
    public static void doFindUsersAccounts(list<user> userslist){
        Map<Id,Id> deactivatedUserswithSuperiorsMap = new Map<Id,Id>();
        for(User u:userslist){
            if(!u.IsActive){
                deactivatedUserswithSuperiorsMap.put(u.Id,u.Superior__c);

            }
        }
        changeAccountOwnership(deactivatedUserswithSuperiorsMap);
    }
    @future
    public static void changeAccountOwnership(Map<Id,Id> deactivatedUserswithSuperiorsMap){
     if(!deactivatedUserswithSuperiorsMap.isEmpty()){
            List <Account> deactivatedUsersAccList = [Select Id From Account Where OwnerId In : 
            deactivatedUserswithSuperiorsMap . KeySet ()];
            for (Account acc : deactivatedUsersAccList){
                acc.OwnerId = deactivatedUserswithSuperiorsMap . get (acc.OwnerId);

            } 
            if(!deactivatedUsersAccList.isEmpty()){
                update deactivatedUsersAccList;
            }
            
        }
    }
}