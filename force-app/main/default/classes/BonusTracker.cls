public class BonusTracker {
    static decimal totalBonusPaid=0;
    public static decimal payBonus(decimal bonus){
        totalBonusPaid = bonus + totalBonusPaid;
        return totalBonusPaid;
    }

}
//system.debug(BonusTracker.paybonus(5000));
//system.debug(BonusTracker.paybonus(3000));