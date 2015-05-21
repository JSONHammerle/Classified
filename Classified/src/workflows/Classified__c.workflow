<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Classified_Notification</fullName>
        <description>Classified Notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>learnapex@workbook.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Classified_Email_Templates/Classified_New_Template</template>
    </alerts>
    <rules>
        <fullName>Classified%3A New Alert</fullName>
        <actions>
            <name>Classified_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Classified__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <criteriaItems>
            <field>Classified__c.OwnerId</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
