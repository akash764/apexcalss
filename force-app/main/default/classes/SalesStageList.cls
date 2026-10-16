public class SalesStageList {
    public void SalesStages(){
        list<string>stage = new list<string>{'Prospecting', 'Negotitation', 'Closed Won', 'Closed Lost'};
            system.debug(stage);
        stage.add(1,'Qualification');
        system.debug(stage);
        integer num = stage.indexOf('Negotitation');
        stage.set(num,'Proposal Sent');
        system.debug(stage);
    }

}