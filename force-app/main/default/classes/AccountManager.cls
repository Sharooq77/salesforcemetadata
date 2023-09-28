@isTest
public class AccountManager {
    public static void updateAccountRating() {
        List<Account> accountsToUpdate = new List<Account>();
        // we can modified in the main and add
        
        for (Account acc : [SELECT Id, AnnualRevenue, Rating FROM Account]) {
            if (acc.AnnualRevenue >= 1000000) {
                acc.Rating = 'High';
            } else if (acc.AnnualRevenue >= 100000 && acc.AnnualRevenue < 1000000) {
                acc.Rating = 'Medium';
            } else {
                acc.Rating = 'Low';
            }
            
            accountsToUpdate.add(acc);
        }
        
        if (!accountsToUpdate.isEmpty()) {
            update accountsToUpdate;
        }
    }
}