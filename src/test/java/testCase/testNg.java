package testCase;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;

public class testNg {

    @BeforeClass
    public static void beforeClass() {
        System.err.println("Before Class");
    }

    @AfterClass
    public static void afterClass() {
        System.err.println("After Class");
    }

    @BeforeMethod
    public static void beforeMethod() {
        System.err.println("Before Method");
    }

    @AfterMethod
    public static void afterMethod() {
        System.err.println("Before Class");
    }

    @Test
    public void testCase() {
        System.out.println("Test case 1");
    }
}
