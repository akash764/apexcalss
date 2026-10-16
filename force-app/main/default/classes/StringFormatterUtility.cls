public class StringFormatterUtility {
    public string uppercase(string text){
        return text.toUpperCase();
    }
    public string trim(string text,boolean trim){
        if(trim== True){
            return text.toLowerCase();
        }
        else{
            return text;
        }
    }
    public String splitJoin(String text, String delimiter, String joinWith) {
    if (delimiter == '-') {
        delimiter = '\\-';
    }
    return String.join(text.split(delimiter), joinWith);
}
}
//String result3 = util.splitJoin('apple-banana-orange', '-', '/');