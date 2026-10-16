public class ContactPhoneNumberUpdate {
    public void phoneNumber(){
        list<string>contactNumber = new list<string>{'9087654321','2345678909','8976542689','7756239087'};
            system.debug(contactNumber);
        contactNumber.add(2,'7864790271');
        system.debug(contactNumber);
        contactNumber.remove(4);
        system.debug(contactNumber);
    }
    
}