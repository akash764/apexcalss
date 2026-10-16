public class ProductPrice {
    public void productPrice(){
        List<Decimal> priceBook = new List<Decimal>();
        priceBook.addAll(new List<Decimal>{ 45.8, 58.2, 60.9 });
        System.debug(priceBook);
        priceBook.set(0, priceBook.get(0) * 1.10);
        
        System.debug(priceBook);
    }
}