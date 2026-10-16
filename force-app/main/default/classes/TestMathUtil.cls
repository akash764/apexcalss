@istest
public class TestMathUtil {
    @istest
    static void testaddNumbers(){
        integer addednumber = Mathutil.addNumbers(8,2);
        assert.areequal(10,addednumber,'entered wrong number');
    }
    @istest
    static void testisEven(){
        boolean iseven = Mathutil.isEven(4);
        assert.areequal(true,iseven,'wrong input');
    }
    @istest
    static void testisodd(){
        boolean iseven = Mathutil.isEven(9);
        assert.areequal(false,iseven,'wrong input');
    }

}