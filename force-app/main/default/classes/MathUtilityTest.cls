@isTest
private class MathUtilityTest {
    @isTest
    static void testMathOperations() {
        Test.startTest();
        Integer sumResult = MathUtility.add(10, 5);
        Integer multiplyResult = MathUtility.multiply(10, 5);
        Integer subtractResult = MathUtility.subtract(10, 5);
        Test.stopTest();

        System.assertEquals(15, sumResult, '10 + 5 should equal 15');
        System.assertEquals(50, multiplyResult, '10 * 5 should equal 50');
        System.assertEquals(5, subtractResult, '10 - 5 should equal 5');
    }
}