public class ProductList {
    static list<ProductCatalog>productList = new list<ProductCatalog>();
    public static void addList(ProductCatalog pro){
        productList.add(pro);
        system.debug(productList);
    }
    public static void priceProduct(){
        for(ProductCatalog pro :productlist){
            if(pro.price > 1000){
                system.debug(pro);
            }
        }
    }
    public static void productCount(){
        for(productCatalog pro:productList){
            if(pro.category == 'Electronics'){
                system.debug(pro);
            }
        }
    }

}