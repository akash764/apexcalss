public virtual class LibraryItem {
    public string title;
    public decimal price;
    public LibraryItem(string title,decimal price){
        this.title = title;
        this.price = price;
    }
    public virtual string getPrice(){
        return this.title + 'book price is ' + this.price;
    }

}