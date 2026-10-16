public class DemoDataProcess {
    public static void processData(){
        processAccountData();
        processContactData();
        system.debug('Finished Processing Account And Contact');
    }
    public static void processAccountData(){
        Account acc = new Account(
        Name = 'Acme Corp',
        Rating = 'Hot',
        Industry = 'Technology');
        system.debug('Account Name: ' + acc.Name);
        system.debug('Account Rating: ' + acc.Rating);
        system.debug('Account Industry: ' + acc.Industry);
        processAccountRating(acc.Rating);
    }
    public static void ProcessAccountRating(string Rating){
        if(Rating == 'Hot'){
            system.debug('The Account is High Priority');
        }
        else if(Rating == 'Warm'){
            system.debug('The Account is Medium Priority');
        }
        else{
            system.debug('The Account is Low Priority');
        }
    }
    public static void processContactData(){
        Contact con = new Contact(
        FirstName = 'Alice',
        LastName = 'Shara',
        Email = 'alice.sharma@emaple.com');
        system.debug('Contact First Name: ' + con.FirstName);
        system.debug('Contact Last Name: ' + con.LastName);
        system.debug('Contact Email: ' + con.Email);
        System.debug('Contact Details: ' + con);
        processContactEmail(con.Email);
    }
    public static void ProcessContactEmail(string Email){

        if (Email != null && Email.contains('example.com')) {
            System.debug('Internal contact');
        } else {
            System.debug('External contact');
        }
    }
    /*
    public DemoDataProcess(){
    system.debug('Finished Processing Account And Contact');
    }*/
    //DemoDataProcess.processData();
    

}