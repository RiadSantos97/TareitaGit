public class AccountHandler {
	public static Account insertNewAccount(String name){
        Account account = new Account(Name=name);
        try{
            insert account;
            return account;
        }catch(DMLException e){
            return null;
        }
    }
}