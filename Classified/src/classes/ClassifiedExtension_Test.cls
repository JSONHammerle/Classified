@isTest(SeeAllData=true) 
public class ClassifiedExtension_Test
{
    public static testMethod void someMethod_Test()
    {
        Classified__c classified = new Classified__c(Name='learnapex');
        insert classified;
        
        Test.startTest();
        Test.setCurrentPage(Page.NewClassified);
        
        ApexPages.StandardController stdController = new ApexPages.StandardController(classified);
        ClassifiedExtension ext = new ClassifiedExtension(stdController);
        System.assert(ext != null);
        
        System.assertEquals(ext.record, classified);

        Test.stopTest();
    }
}