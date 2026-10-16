public class MathUtility {
    @TestVisible
    private static Integer add(Integer a, Integer b) {
        return a + b;
    }

    @TestVisible
    private static Integer multiply(Integer a, Integer b) {
        return a * b;
    }

    @TestVisible
    private static Integer subtract(Integer a, Integer b) {
        return a - b;
    }
}