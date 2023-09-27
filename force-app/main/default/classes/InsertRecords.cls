public class InsertRecords {
    public  void insertAccounts() {
        List<Account> accList = new List<Account>();
        Integer batchSize = 200; // Set the batch size
        
        for (Integer i = 0; i <= 1000; i++) {
            Account acc = new Account();
            acc.Name = 'Demo ' + i;
            accList.add(acc);
            
            // Insert records in batches
            if (accList.size() == batchSize) {
                insert accList;
                accList.clear(); // Clear the list to start a new batch
            }
        }
        
        // Insert any remaining records
        if (!accList.isEmpty()) {
            insert accList;
        }
    }
}