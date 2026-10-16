public class AccountUtility1 {
    public static String getCategory(String accName) {
        List<Account> accList = [SELECT AnnualRevenue FROM Account WHERE Name = :accName LIMIT 1];
        
        if (accList.isEmpty() || accList[0].AnnualRevenue == null) {
            return 'Unknown';
        }
        
        Decimal revenue = accList[0].AnnualRevenue;
        
        if (revenue >= 1000000) {
            return 'Platinum';
        } else if (revenue >= 500000) {
            return 'Gold';
        } else if (revenue >= 100000) {
            return 'Silver';
        } else {
            return 'Bronze';
        }
    }
}