public class ProductCodeFormatter {
    public string formatCode(string code){
        return code.toUpperCase();
    }
    public string formatCode(string code,boolean trim){
        if(trim == True){
            return code.trim().toUpperCase();
        }
        else{
            return code;
        }
    }
    

}
//ProductCodeFormatter obj = new ProductCodeFormatter();

//System.debug(obj.formatCode('mohan'));
//System.debug(obj.formatCode('  mohan  ', true));