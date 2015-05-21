@isTest
private class IncrementClassifiedCounter_Test {

   static testMethod void validateIncrementCounter() {

        User myUser; 
        Id userId = UserInfo.getUserId();
        myUser = [SELECT ClassifiedCounter__c FROM User WHERE id = :userId];
        System.debug('Before inserting classified: ' + myUser.ClassifiedCounter__c);
        
        Integer counter = 0;
        if(myUser.ClassifiedCounter__c != null)
            counter = (myUser.ClassifiedCounter__c).intValue();
        
        Classified__c classified1 = new Classified__c(Name='Increment classified counter');    
        // Insert classified
        insert classified1;
               
        User myUser1; 
        Id userId1 = UserInfo.getUserId();
        myUser1 = [SELECT ClassifiedCounter__c FROM User WHERE id = :userId1];
        System.debug('After inserting classified: ' + myUser1.ClassifiedCounter__c);
        
        counter = counter + 1;
        // Test that the trigger correctly updated the price
        System.assertEquals(counter, myUser1.ClassifiedCounter__c);
               
        Classified__c classified2 = new Classified__c(Name='Increment classified counter again');
               
        // Insert another classified
        insert classified2;
               
        User myUser2; 
        Id userId2 = UserInfo.getUserId();
        myUser2 = [ SELECT ClassifiedCounter__c FROM User WHERE id = :userId2];
        System.debug('After inserting classified again: ' + myUser2.ClassifiedCounter__c);
        
        counter = counter + 1;        
        System.assertEquals(counter, myUser2.ClassifiedCounter__c);
   }
}