public class accountbatchschedulable  implements schedulable{
    
    public void execute(System.SchedulableContext sc){
        
         accountupdatebatch accbatch = new accountupdatebatch();
         database.executeBatch(accbatch);
        // this change can be done by test 2
    }
}