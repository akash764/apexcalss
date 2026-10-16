@istest
public class TestDiscountCalculator {
    @istest
    static void testzeroandnegative(){
        decimal zero = DiscountCalculator.calculateDiscount(0);
        decimal negative = DiscountCalculator.calculateDiscount(-500);
        assert.areequal(0,zero,'number must be greater than o');
        assert.areequal(0,negative,'number must be greater than o');
        
    }
    @istest
    static void testgreaterthan10000(){
        decimal result = DiscountCalculator.calculateDiscount(10000);
        assert.areequal(8000,result,'number must be greater than o');
        
    }
    @istest
    static void testgreaterthanequalto5000(){
        decimal result = DiscountCalculator.calculateDiscount(5000);
        assert.areequal(4500,result,'number must be greater than o');
    }
    @istest
    static void testgreaterthanequalto1000(){
        decimal result = DiscountCalculator.calculateDiscount(1000);
        assert.areequal(950,result,'number must be greater than o');
    }
    @istest
    static void testlesserthan1000(){
        decimal result = DiscountCalculator.calculateDiscount(100);
        assert.areequal(100,result,'number must be greater than o');
    }

}