public class emailtriggerhelper {
    
    public static void afterdeleteemail(list<contact> conlist){
        
        list<string> allmailIDs = new list<string>();
         for(contact con : conlist){
            allmailIDs.add(con.Email);
        }
        
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.toAddresses = allmailIDs ; //new String[] { 'abc2@gmail.com', 'abc2@gmail.com' };
        message.subject = 'Subject Test Message';
        message.plainTextBody = 'This is the message body.';
        Messaging.SingleEmailMessage[] messages =   new List<Messaging.SingleEmailMessage> {message};
            Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
        
        if (results[0].success) {
            System.debug('The email was sent successfully.');
        } else {
            System.debug('The email failed to send: ' + results[0].errors[0].message);
        }
        
        
}
    
}