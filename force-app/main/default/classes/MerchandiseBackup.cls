public class MerchandiseBackup {
    public static void insertMerchandiseBkup(List<Merchandise__c> mer) {
        Merchandise_Arch__c ma;
        List<Merchandise_Arch__c> maList = new List<Merchandise_Arch__c>();
        for(Merchandise__c m : mer) {
            ma = new Merchandise_Arch__c();
            ma.name = m.name;
			maList.add(ma);            
        }
        insert maList;
    }
}