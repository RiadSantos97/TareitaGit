public class ContactSearch {
	public static List<Contact> searchForContacts(String lastName, String postalCode){
        try{
            List<Contact> contacts = [SELECT Id, FirstName, LastName, MailingPostalCode 
                                      FROM Contact 
                                      WHERE (LastName=:lastName AND MailingPostalCode=:postalCode)];
        	return contacts;
        } catch(Exception e){
            return null;
        }

    }
}