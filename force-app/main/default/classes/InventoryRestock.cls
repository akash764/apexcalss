public class InventoryRestock {
    public void warehouse(){
        list<String>products = new list<string>{'Smart Phone', 'Tab', 'Speaker', 'Mouse', 'Laptop', 'Charger', 'Tv'};
            system.debug(products);
        products[0] = 'Iphone';
        system.debug(products);
        products.remove(5);
        system.debug(products);
    }

}