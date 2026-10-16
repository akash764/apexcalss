public class ProductService {
    public class ProductWrapper {
        public String productName { get; set; }
        public Decimal price { get; set; }
        public Boolean isExpensive { get; set; }
    }
    
    public ProductWrapper wrapProduct() {
        ProductWrapper pw = new ProductWrapper();
        pw.productName = 'Laptop Pro';
        pw.price = 1200.00;
        if (pw.price > 1000) {
            pw.isExpensive = true;
        } else {
            pw.isExpensive = false;
        }
        return pw;
    }
    
    public static void execute() {
        ProductService service = new ProductService();
        ProductWrapper result = service.wrapProduct();
        System.debug('Product Name: ' + result.productName);
        System.debug('Price: ' + result.price);
        System.debug('Is Expensive: ' + result.isExpensive);
    }
}