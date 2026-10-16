public class LibraryService {
    public class BookWrapper {
        public String bookName { get; set; }
        public Integer pages { get; set; }
        public Boolean isLongBook { get; set; }
    }
    
    public List<BookWrapper> getWrappedBooks() {
        List<BookWrapper> books = new List<BookWrapper>();
        
        BookWrapper b1 = new BookWrapper();
        b1.bookName = 'Apex Programming Guide';
        b1.pages = 350;
        
        BookWrapper b2 = new BookWrapper();
        b2.bookName = 'Salesforce Administration Basics';
        b2.pages = 220;
        
        BookWrapper b3 = new BookWrapper();
        b3.bookName = 'Enterprise Architecture Patterns';
        b3.pages = 450;
        
        List<BookWrapper> sampleBooks = new List<BookWrapper>{b1, b2, b3};
        
        for (BookWrapper bk : sampleBooks) {
            if (bk.pages > 300) {
                bk.isLongBook = true;
            } else {
                bk.isLongBook = false;
            }
            books.add(bk);
        }
        
        return books;
    }
    
    public static void execute() {
        LibraryService service = new LibraryService();
        List<BookWrapper> results = service.getWrappedBooks();
        
        for (BookWrapper bk : results) {
            System.debug('Book: ' + bk.bookName + ', Pages: ' + bk.pages + ', Is Long Book: ' + bk.isLongBook);
        }
    }
}