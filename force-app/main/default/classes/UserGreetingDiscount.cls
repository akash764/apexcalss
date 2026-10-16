public class UserGreetingDiscount {
    public static Decimal getDiscount() {
        User currentUser = [SELECT Profile.Name FROM User WHERE Id = :UserInfo.getUserId()];
        String profileName = currentUser.Profile.Name;
        
        if (profileName == 'SalesRep') {
            return 50;
        } else if (profileName != null && profileName.contains('MarketingRep')) {
            return 60;
        } else {
            return 0;
        }
    }
}