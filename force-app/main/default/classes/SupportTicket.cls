public class SupportTicket {
    public void SupportTicket(){
        list<string>categorizes = new list<string>{'Technical', 'Billing', 'General', 'Accounts', 'Marketing'};
            system.debug(categorizes);
        categorizes.add(0,'Refund');
        system.debug(categorizes);
        categorizes.remove(categorizes.indexOf('General'));
        system.debug(categorizes);
    }

}