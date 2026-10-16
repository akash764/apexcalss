public class DemoCalculator {
    static integer number1;
    static integer number2;
    public static void runCalculatorAdd(integer number1,integer number2){
        System.debug('Sum of Two Numbers is: ' + (number1 + number2));
    }
    public static void runCalculatorSub(integer number1,integer number2){
        System.debug('subration of Two Numbers is: ' + (number1 - number2));
    }
    public static void runCalculatorMul(integer number1,integer number2){
        System.debug('Multiple of Two Numbers is: ' + (number1*number2));
    }
    public static void runCalculatorDiv(integer number1,integer number2){
        if(number2 != 0){
            integer number3 =number1/number2;
            System.debug('Divide of Two Numbers is: ' + (number1/number2));
        }
        else{
            system.debug('Cannot Divide By Zero');
        }
        
    }

}
/*
DemoCalculator.runCalculatorAdd(2,9);
DemoCalculator.runCalculatorSub(14,4);
DemoCalculator.runCalculatorMul(2,9);
DemoCalculator.runCalculatorDiv(2,9);
*/