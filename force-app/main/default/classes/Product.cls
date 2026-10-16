public abstract class Product {
    public string product;
    public integer price;
    public integer stock;
    public abstract integer calculateStockValue();
    public void printProduct(){
        system.debug('The Product ' + product + ' Price is ' + price + ' And Total Stock is ' + stock);
    }

}