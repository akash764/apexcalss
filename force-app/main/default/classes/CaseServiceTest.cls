@isTest
private class CaseServiceTest {
    @isTest
    static void testGetRecentCases() {
        Case c = new Case(Subject = 'Test Case', Status = 'New');
        insert c;

        Test.startTest();
        List<Case> recentCases = CaseService.getRecentCases();
        Test.stopTest();

        System.assertEquals(1, recentCases.size());
        System.assertEquals('Test Case', recentCases[0].Subject);
    }
}