public class RecordsInsert {
    
    public void accountInsert() {
        List<Account> accList = new List<Account>();
        
       
        for(Integer i = 1; i <= 2000; i++) {
            Account acc = new Account();
            acc.Name = 'Demo ' + i; 
            accList.add(acc);
        }
        
        insert accList;
        system.debug(acclist);
    }
}