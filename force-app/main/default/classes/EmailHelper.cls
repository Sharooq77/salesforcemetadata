public class EmailHelper {
    
    
    public static void sendemail(list<contact> conlist){
        
        list<string> AllMaillIDs = new  list<string>();
        
        for (contact con : conlist){
            AllMaillIDs.add(con.Email);
        }
        
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.toAddresses = AllMaillIDs;
        message.subject = 'hey Test Message';
        message.plainTextBody = 'your account has been deleted.';
        Messaging.SingleEmailMessage[] messages =   new List<Messaging.SingleEmailMessage> {message};
            Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
        
        if (results[0].success) {
            System.debug('The email was sent successfully.');
        } else {
            System.debug('The email failed to send: ' + results[0].errors[0].message);
        }
        
        
    }
    
}