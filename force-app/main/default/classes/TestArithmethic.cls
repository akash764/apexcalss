@isTest
public class TestArithmethic {
    @isTest
    public static void testadd() {
        integer ans = Arithmetic.add(10, 9);
        assert.areEqual(19,ans,'Wrong');
}
    @isTest
    public static void testsubtract(){
        integer ans = Arithmetic.subtract(10, 9);
        assert.areEqual(1,ans,'Wrong');
    }
    @isTest
    public static void testmultiply(){
        integer ans = Arithmetic.multiply(10, 9);
        assert.areEqual(90,ans,'Wrong');
    }
    @istest
    public static void testdivision(){
        integer ans = Arithmetic.division(10, 2);
        assert.areEqual(5,ans,'Wrong');
    }


}