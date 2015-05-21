trigger IncrementClassifiedCounter on Classified__c (after insert) {
   
   Classified__c[] classifieds = Trigger.new;

   IncrementClassifiedCounter.incrementCounter(classifieds);
}