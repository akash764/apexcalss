public class DiscountCalculator {

// Calculates discount based on amount
public static Decimal calculateDiscount(Decimal amount) {
if (amount <= 0) return 0;
Decimal discountPercent;
// Define discount tiers
if (amount >= 10000) {
discountPercent = 20;
} else if (amount >= 5000) {

discountPercent = 10;
} else if (amount >= 1000) {
discountPercent = 5;
} else {
discountPercent = 0;

}

return amount - (amount * discountPercent / 100);

}
}