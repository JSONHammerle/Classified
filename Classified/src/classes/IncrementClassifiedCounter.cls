public class IncrementClassifiedCounter{
   public static void incrementCounter(Classified__c[] classifieds) {

List<User> userFieldUpdate = new List<User>();

for(User c : [SELECT Id, ClassifiedCounter__c FROM User WHERE (Id IN (Select OwnerId from  Classified__c ))])
        {
          if(c.ClassifiedCounter__c != null)
              c.ClassifiedCounter__c = c.ClassifiedCounter__c + 1.0;
          userFieldUpdate.add(c);
         }

    if(!userFieldUpdate.isEmpty()){
        update userFieldUpdate;
    }    
   }  
   
}