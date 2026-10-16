public class ResultCounter {
    static integer totalPass=0;
    static integer totalFail=0;
    public static string checkResult(integer marks){
        if(marks >=40){
            totalPass++;
            return 'Total Pass: ' + totalPass + ', Total Fail: ' + totalFail;
        }
        else{
            totalFail++;
            return 'Total Pass: ' + totalPass + ', Total Fail: ' + totalFail;

        }
    }

}
//system.debug(ResultCounter.checkResult(50));
//system.debug(ResultCounter.checkResult(35));