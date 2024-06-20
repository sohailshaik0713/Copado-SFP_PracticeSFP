@IsTest
public class StringUtilitiesTest {
    @IsTest
    static void testIsPalindrome() {
        System.assertEquals(true, StringUtilities.isPalindrome('A man a plan a canal Panama'));
        System.assertEquals(false, StringUtilities.isPalindrome('This is not a palindrome'));
        System.assertEquals(false, StringUtilities.isPalindrome(''));
    }

    @IsTest
    static void testReverse() {
        System.assertEquals('amanaP lanac a nalp a nam A', StringUtilities.reverse('A man a plan a canal Panama'));
        System.assertEquals('emordnilap a ton si sihT', StringUtilities.reverse('This is not a palindrome'));
        System.assertEquals('', StringUtilities.reverse(''));
    }

    @IsTest
    static void testCountOccurrences() {
        System.assertEquals(3, StringUtilities.countOccurrences('banana', 'a'));
        System.assertEquals(0, StringUtilities.countOccurrences('banana', 'x'));
        System.assertEquals(0, StringUtilities.countOccurrences('', 'a'));
        System.assertEquals(0, StringUtilities.countOccurrences('banana', ''));
    }

    @IsTest
    static void testToTitleCase() {
        System.assertEquals('A Man A Plan A Canal Panama', StringUtilities.toTitleCase('a man a plan a canal panama'));
        System.assertEquals('This Is A Test', StringUtilities.toTitleCase('tHis is A tEst'));
        System.assertEquals('', StringUtilities.toTitleCase(''));
    }
}