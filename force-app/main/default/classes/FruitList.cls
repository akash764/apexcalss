public class FruitList {
    public static void searchFruit(list<string>fruitslist,string fruit){
        if(fruitslist.contains(fruit)){
            system.debug('Fruit Found inside List');
        }
        else{
            system.debug('Fruit not Found');
        }
    }

}
//FruitList.searchFruit(new list<string>{'Apple','Orange','Grape'},'Apple');