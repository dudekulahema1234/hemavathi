trigger updatephone on account(before insert,before update){
 for(Account acc :Trigger.new)
 {
  if (acc.rating == 'hot')
  {
  acc.phone = '11111111';
  
  }
 }
}