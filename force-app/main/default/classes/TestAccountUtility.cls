@istest
public class TestAccountUtility {
    @testsetup
    static void testinsertrecord(){
        Account acclist = new Account(Name='Akash');
        insert acclist;
        Contact conlist = new Contact(LastName='The One',AccountId=acclist.Id);
        insert conlist;
        Opportunity opp = new Opportunity(
            Name = 'Test Opportunity',
            StageName = 'Prospecting',
            CloseDate = Date.today().addDays(30),
            AccountId = acclist.Id
        );
        insert opp;
        Account acc = new Account(Name='Kalis',status__c='Inactive');
        insert acc;
    }
    @istest
    static void testgetAccountsRelatedChild(){
        test.starttest();
        integer totalchild = AccountUtility.getAccountsRelatedChild();
        test.stoptest();
        system.assertequals(2,totalchild,'child record must be 2');
    }
    @istest
    static void testclearAccount(){
        test.starttest();
        integer totaldeleted = AccountUtility.clearAccount();
        test.stoptest();
        system.assertequals(1,totaldeleted,'total deleted must be 1');
    }
    
}