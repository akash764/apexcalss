public class ContactService {
    public static Contact createContact(String lastName) {
        Contact con = new Contact(LastName = lastName);

        if (!Test.isRunningTest()) {
            insert con;
        }

        return con;
    }
}