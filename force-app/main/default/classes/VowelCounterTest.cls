@isTest
private class VowelCounterTest {
    
    @isTest
    static void testCountVowelsWithValidString() {
        Integer vowelCount = VowelCounter.countVowels('Salesforce Apex');
        System.assertEquals(6, vowelCount, 'Should correctly count 6 vowels in Salesforce Apex');
    }
    
    @isTest
    static void testCountVowelsWithNullOrEmpty() {
        Integer nullCount = VowelCounter.countVowels(null);
        Integer emptyCount = VowelCounter.countVowels('');
        
        System.assertEquals(0, nullCount, 'Null input should return 0');
        System.assertEquals(0, emptyCount, 'Empty string should return 0');
    }
    
    @isTest
    static void testCountVowelsNoVowels() {
        Integer noVowelCount = VowelCounter.countVowels('Rhythm');
        
        System.assertEquals(0, noVowelCount, 'String with no vowels should return 0');
    }
}