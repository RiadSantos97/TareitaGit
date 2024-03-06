public class ContactAndLeadSearch {
	public static List<List<sObject>> searchContactsAndLeads(String searchParam){
        List<List<sObject>> queryResult = [FIND :searchParam IN NAME FIELDS 
                                           RETURNING Lead(Name),Contact(FirstName,LastName)];
        return queryResult;
    }
}