public class EletronicsProduct extends Product{
    public EletronicsProduct(string product,integer price,integer stock){
        this.product=product;
        this.price=price;
        this.stock=stock;
    }
    public override integer calculateStockValue(){
        return stock * price;
    }
}
//EletronicsProduct obj=new EletronicsProduct('Speaker', 5000,25);
//bj.printProduct();
//system.debug(obj.calculateStockValue());