public class OddEven {
    public static void returnOddEven(integer startNumber,integer endNumber){
        list<integer>odd = new list<integer>();
        list<integer>even = new list<integer>();
        for(integer i=startNumber;i<endNumber;i++){
            if(math.mod(i,2) == 0){
                odd.add(i);
            }
            else{
                even.add(i);
            }
        }
        system.debug('Odd List: ' +odd);
        system.debug('Even List: ' +even);
    }
    
}