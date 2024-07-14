public with sharing class AccountTriggerHandler {
    public AccountTriggerHandler() {

    }
    public static handleBefore(List<SObject> records){
        List<Account> accounts = (List<Account>) records;
        for(Account account : accounts){
            if(account.NumberOfEmployees < 100)
                account.Account_Class__c = 'Small Business';
            else if(account.NumberOfEmployees >= 100 && account.NumberOfEmployees < 1000)
                account.Account_Class__c = 'Medium Business';
            else if(account.NumberOfEmployees >= 1000)
                account.Account_Class__c = 'Large Business';
            else
                account.Account_Class__c = '';                
        }
    }
}
