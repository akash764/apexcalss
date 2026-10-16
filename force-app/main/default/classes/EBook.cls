public class EBook extends LibraryItem{
    public EBook(string title,decimal price){
        super(title,price);
    }
    public override string getPrice(){
        decimal discount = price * 0.30;
        return title + ' Your EBook 30% discounted ' + (price-discount);
    }

}
//EBook obj=new Ebook('Atomic Habits',350);
//system.debug(obj.getPrice());
//LibraryItem obj=new LibraryItem('1958',400);
//system.debug(obj.getprice());