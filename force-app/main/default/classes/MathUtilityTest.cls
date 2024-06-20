@IsTest
public class MathUtilityTest {
    @IsTest
    static void testAdd() {
        Integer result = MathUtility.add(3, 2);
        System.assertEquals(5, result);
    }

    @IsTest
    static void testSubtract() {
        Integer result = MathUtility.subtract(5, 3);
        System.assertEquals(2, result);
    }

    @IsTest
    static void testMultiply() {
        Integer result = MathUtility.multiply(4, 3);
        System.assertEquals(12, result);
    }

    @IsTest
    static void testDivide() {
        Decimal result = MathUtility.divide(10, 2);
        System.assertEquals(5, result);
    }

    @IsTest
    static void testDivideByZero() {
        try {
            MathUtility.divide(10, 0);
            System.assert(false, 'Expected exception not thrown');
        } catch (MathUtility.MathUtilityException e) {
            System.assertEquals('Cannot divide by zero', e.getMessage());
        }
    }
}