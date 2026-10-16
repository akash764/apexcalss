public class LibraryManagementList {
    static list<LibraryManagement>bookList = new list<LibraryManagement>();
    public static void addBook(LibraryManagement book){
        bookList.add(book);
    }
    public static void displayBook(){
        for(LibraryManagement book:bookList){
            system.debug('Book Title: '+book.title);
            system.debug('Book Author: '+book.author);
            system.debug('Book Genre: '+book.genre);
        }
    }
    public static void bookgenre(){
        list<string>bookgenre = new list<string>();
        for(LibraryManagement book:bookList){
            if(book.genre == 'Science Fiction'){
                bookgenre.add('Books With Science Fiction Genre: '+ book.title);
            }
        }
        system.debug(bookgenre);
    }
    public static void displayAuthor(){
        for(LibraryManagement book:bookList){
            system.debug(' Book Author: '+book.author +' Book Title: '+book.title);
        }
    }
    

}
/*
 *LibraryManagement obj;
obj = new LibraryManagement('To Kill a Mockingbird', 'Harper Lee', 'novel');
LibraryManagementList.addBook(obj);
obj = new LibraryManagement('Atomic Habits', 'James Clear', 'Personal Development');
LibraryManagementList.addBook(obj);
obj = new LibraryManagement('Pride and Prejudice', 'Jane Austen', 'Science Fiction');
LibraryManagementList.addBook(obj);
LibraryManagementList.displayBook();
LibraryManagementList.bookgenre();
LibraryManagementList.displayAuthor();
 */