public class SuperMarket {
    static map<string,list<ProductStore>>productmap = new map<string,list<ProductStore>>();
    public static void addProduct(string code,string name,integer price,integer stock,decimal discount){
        ProductStore product = new ProductStore(code,name,price,stock,discount);
        if(productmap.containskey(code)){
            productMap.get(code).add(product);
        }
        else{
            productMap.put(code,new list<ProductStore>{product});
        }
        system.debug(productMap);
    }
    public static void displayStock(string code){
        if (productMap.containsKey(code)) {
            for (ProductStore product : productMap.get(code)) {
                System.debug('Product: ' + product.name + ' | Stock: ' + product.stock);
            }
        } else {
            System.debug('Product code not found.');
        }
    }
    public static void reOrder(string code, String productName, Integer additionalStock){
        if (productMap.containsKey(code)) {
            for (ProductStore product : productMap.get(code)) {
                if (product.name == productName) {
                    product.stock += additionalStock;
                    System.debug('Updated stock for ' + productName + ': ' + product.stock);
                    return;
                }
            }
        }
        else {
            System.debug('Product Code Not Available');
            
            
        }
    }
    }
/*
 * SuperMarket.addProduct('P101', 'Apple', 100, 50, 5.0);
SuperMarket.addProduct('P101', 'Green Apple', 120, 30, 2.0);
SuperMarket.addProduct('P102', 'Banana', 40, 100, 0.0);
SuperMarket.displayStock('P101');
SuperMarket.reOrder('P101', 'Apple', 150);
SuperMarket.reOrder('P999', 'Unknown Item', 90);*/