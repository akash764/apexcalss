public class FurnitureProduct extends Product{
    public FurnitureProduct(string product,integer price,integer stock){
        this.product=product;
        this.price=price;
        this.stock=stock;
    }
    public override integer calculateStockValue(){
        return stock * price;
    }

}
//FurnitureProduct obj=new FurnitureProduct('Table', 10000,10);
//bj.printProduct();
//system.debug(obj.calculateStockValue());