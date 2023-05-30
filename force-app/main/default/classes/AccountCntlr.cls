public class AccountCntlr {

	@AuraEnabled
    public static List<Account> showAccounts(){
        System.debug('The Chnages are ');
        List<Account> accList = [select id,name,type,Industry,AnnualRevenue from Account limit 50];
        return accList;
    }
}