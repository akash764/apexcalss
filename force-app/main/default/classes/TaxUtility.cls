public class TaxUtility {
    public static String calculateTax(Decimal salary) {
        if (salary == null || salary <= 0) {
            return 'No Tax';
        }
        
        if (salary >= 1000000) {
            return String.valueOf(salary * 0.30);
        } else if (salary >= 500000) {
            return String.valueOf(salary * 0.20);
        } else if (salary >= 250000) {
            return String.valueOf(salary * 0.10);
        } else {
            return 'No Tax';
        }
    }
}