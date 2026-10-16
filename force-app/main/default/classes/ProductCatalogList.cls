public class ProductCatalogList {
    static list<ProductCatalog>productList = new list<ProductCatalog>();
    public static void addProduct(ProductCatalog pro){
        productlist.add(pro);
    }
    public static void displayList(){
        for(ProductCatalog pro:productList){
            system.debug('Product Names In The List: '+ pro.productName);
            system.debug('Product Category In The List: '+ pro.category);
            system.debug('Product Category In The List: '+ pro.price);
            
        }
    }
    public static void displayProductprice(){
        list<string>priceProduct = new list<string>();
        for (ProductCatalog pro:productList){
            if (pro.price > 1000){
                priceProduct.add(pro.productName);
                system.debug(priceProduct);
            }
        }
    }
    public static void catalogProduct(){
        list<string>catalogProduct = new list<string>();
        for(Productcatalog pro:productList){
            if(pro.category == 'Electronics'){
                catalogProduct.add(pro.productName);
            }
        }
        system.debug(catalogProduct.size());
    }
    
}
/*ProductCatalog obj;
obj = new ProductCatalog('Fan', 'Electronics', 2000);
ProductCatalogList.addProduct(obj);
obj = new ProductCatalog('Radio', 'Electronics', 3000);
ProductCatalogList.addProduct(obj);
obj = new ProductCatalog('Mixer', 'Cooking Product', 1000);
ProductCatalogList.addProduct(obj);
ProductCatalogList.displayList();
ProductCatalogList.displayProductprice();
ProductCatalogList.catalogProduct();
*/