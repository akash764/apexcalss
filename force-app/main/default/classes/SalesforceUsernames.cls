public class SalesforceUsernames {
    string name;
    public void username(string name){
        list<string>names = new list<string>{'Mohan', 'Akash', 'Dharma', 'Magesh', 'Sanjay'};
            system.debug(names);
        names.add(2,'Arish');
        system.debug(names);
        if(names.contains(name)){
            integer ind=names.indexOf(name);
            names.remove(ind);
            system.debug(names);
        }
        else{
            system.debug(names);
        }
    }
}