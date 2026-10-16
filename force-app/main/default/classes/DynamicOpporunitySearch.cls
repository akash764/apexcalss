public class DynamicOpporunitySearch {
    public static void SearchOpportunity(string fieldList,string stageOperator,string stageValue,string amountOperator,decimal amountValue,string logicalOpeartor){
        if(!string.isEmpty(fieldList)){
            string query = 'select '+fieldList+' from Opportunity where StageName '+stageOperator+' \''+stageValue+' \''+logicalOpeartor+ ' Amount '+amountOperator+' '+amountValue;
            list<Opportunity>opplist = Database.query(query);
            system.debug(opplist);
        }
        else{
            string query = 'select Id,Name from Opportunity';
            list<Opportunity>opplist = Database.query(query);
            system.debug(opplist);
        }
    }

}
//DynamicOpporunitySearch.SearchOpportunity('Id,Name,StageName,Amount', '!=', 'Closed Lost', '>=', 0, 'AND');