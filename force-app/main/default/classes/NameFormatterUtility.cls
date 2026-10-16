public class NameFormatterUtility {
    string fullName;
    public string formatname(string firstName, string lastname){
        fullName = firstName + lastName;
        return fullName.toUpperCase();
    }
    public string formatname(string firstName,string lastName,boolean trim){
        fullName = firstName + lastName;
        if(trim == True){
            return fullName.toLowerCase();
        }
        else{
            return fullName;
        }
    }
    public String formatName(String title, String fullName, String delimiter) {
    List<String> names = fullName.split(delimiter);
    List<String> initials = new List<String>();
    for(String name : names) {
        if(!String.isBlank(name)) {
            initials.add(name.trim().substring(0, 1).toUpperCase());
        }
    }
    return title + ' ' + String.join(initials, delimiter);
}
}