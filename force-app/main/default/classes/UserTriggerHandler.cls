public class UserTriggerHandler {
    public static void doBeforeUpdate(List<User> newUserList, Map<Id,User> newUserMap,
     List<User> oldUserList,  Map<Id,User> oldUserMap, Integer size){
        UserTriggerUtility.doValidateUser(newUserList);
    }

    }