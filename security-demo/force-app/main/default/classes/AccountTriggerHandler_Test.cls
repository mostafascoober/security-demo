@isTest
public with sharing class AccountTriggerHandler_Test {
    @isTest
    public static void testAccountClassAutomation(){
        test.startTest();
        Account account = new Account();
        account.Name = 'Test Account';
        account.NumberOfEmployees = 100;
        insert account;
        test.stopTest();
        List<Account> accounts = [SELECT Id, Account_Class__c FROM Account WHERE Name = 'Test Account'];
        Assert.areEqual(1, accounts.size(), 'Account was not created successfully!');
        Assert.areEqual('Medium Business', accounts[0].Account_Class__c, 'Wrong account class was assigned');
    }
}
