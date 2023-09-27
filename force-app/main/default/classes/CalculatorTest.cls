// Test Class: CalculatorTest.cls
@isTest
public class CalculatorTest {
    @isTest
    static void testAddition() {
        Integer result = Calculator.add(5, 3);
        System.assertEquals(8, result, 'Addition result is incorrect.');
    }
    
    @isTest
    static void testSubtraction() {
        Integer result = Calculator.subtract(10, 4);
        System.assertEquals(6, result, 'Subtraction result is incorrect.');
    }
    
    @isTest
    static void testMultiplication() {
        Integer result = Calculator.multiply(7, 2);
        System.assertEquals(14, result, 'Multiplication result is incorrect.');
    }
    
    @isTest
    static void testDivision() {
        Integer result = Calculator.divide(8, 2);
        System.assertEquals(4, result, 'Division result is incorrect.');
    }
    
    @isTest
    static void testDivisionByZero() {
        try {
            Calculator.divide(10, 0);
            // If division by zero is not caught, fail the test
            System.assert(false, 'Expected exception was not thrown.');
        } catch (Exception e) {
            // Expecting an IllegalArgumentException
            System.assertEquals('Division by zero is not allowed.', e.getMessage(), 'Incorrect exception message.');
        }
    }
}