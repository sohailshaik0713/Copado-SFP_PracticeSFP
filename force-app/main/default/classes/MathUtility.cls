public class MathUtility {
    // Method to add two numbers
    public static Integer add(Integer a, Integer b) {
        return a + b;
    }

    // Method to subtract two numbers
    public static Integer subtract(Integer a, Integer b) {
        return a - b;
    }

    // Method to multiply two numbers
    public static Integer multiply(Integer a, Integer b) {
        return a * b;
    }

    // Method to divide two numbers
    public static Decimal divide(Integer a, Integer b) {
        if (b == 0) {
            throw new MathUtilityException('Cannot divide by zero');
        }
        return Decimal.valueOf(a) / Decimal.valueOf(b);
    }

    // Custom exception for MathUtility
    public class MathUtilityException extends Exception {}
}