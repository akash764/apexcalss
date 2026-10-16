public class StringCount {
    static string sentence=null;
    static list<string>senlist = new list<string>();
    public static void countString(string sentence){
        integer count = 0;
        string trimsen = sentence.trim();
        senlist.add(trimsen);
        for(string st:senlist){
            if(senlist.contains(trimsen)){
                count++;
            }
        }
        system.debug(sentence+' ('+count+' ) times');
    }
    
}