public class ProductPriceMap {
    string name;
    decimal price;
    static map<string,decimal>product = new map<string,decimal>();
    public static void addProducts(string name,decimal price){
        product.put(name,price);
    }
    public static void display(){
        system.debug(product);
    }
    public static void getDiscountedPrice(string productName,decimal discountPercent){
        decimal discountPrice;
        if(product.containsKey(productName)){
            discountPrice = product.get(productName) - ((product.get(productName)*discountPercent)/100);
            system.debug('Discounted Price is: '+ discountPrice);
                }
        else{
            system.debug(0);
        }
    }
}
/*
 * ProductPriceMap.addProducts('Laptop',55000);
ProductPriceMap.addProducts('Mobile',25000);
ProductPriceMap.addProducts('Tablet',15000);
ProductPriceMap.display();
ProductPriceMap.getDiscountedPrice('Mobile',0.10);



*/