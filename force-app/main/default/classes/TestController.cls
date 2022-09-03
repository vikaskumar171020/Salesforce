public without sharing class TestController {
    @AuraEnabled(Cacheable =  true)
    // public static List<RecordType> getRecordType(){
    public static String getRecordType(){
        try {
            String result;
            List<RecordType> RecordTypeList = [SELECT Id,DeveloperName,Name,SobjectType,IsActive,NamespacePrefix FROM RecordType WHERE SobjectType = 'Test__c' AND IsActive =TRUE];
            result = JSON.serialize(RecordTypeList);
            // return RecordTypeList;
            return result;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
