@isTest
private class ContactServiceTest {
    @isTest
    static void testCreateContactInTestContext() {
        Test.startTest();
        Contact con = ContactService.createContact('Doe');
        Test.stopTest();

        // Id should be null because DML insert was skipped due to Test.isRunningTest()
        System.assertEquals(null, con.Id, 'Contact should not be inserted when running in a test context');
        System.assertEquals('Doe', con.LastName);
    }
}