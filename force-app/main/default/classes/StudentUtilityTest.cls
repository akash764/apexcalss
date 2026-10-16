@isTest
private class StudentUtilityTest {
    @isTest
    static void testCalculateGrade() {
        System.assertEquals('No Grade', StudentUtility.calculateGrade(null, 80, 90));
        System.assertEquals('A', StudentUtility.calculateGrade(95, 90, 92));
        System.assertEquals('B', StudentUtility.calculateGrade(80, 75, 78));
        System.assertEquals('C', StudentUtility.calculateGrade(65, 60, 62));
        System.assertEquals('D', StudentUtility.calculateGrade(45, 40, 42));
        System.assertEquals('F', StudentUtility.calculateGrade(30, 20, 10));
    }
}