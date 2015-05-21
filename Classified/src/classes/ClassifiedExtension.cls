public with sharing class ClassifiedExtension {
    public Classified__c record {get; set;}
    Public Id LoggedInUSerId{get;set;}

public ClassifiedExtension(ApexPages.standardController controller){
        this.record = (Classified__c)controller.getrecord();
        LoggedInUSerId = UserInfo.getUserId();
    }
}