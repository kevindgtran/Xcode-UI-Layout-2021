////
////  chapter4Examples.m
////  prog1
////
////  Created by Kevin Tran on 8/30/17.
////  Copyright © 2017 com.example. All rights reserved.
//
//
//#import <Foundation/Foundation.h>
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        //creating variables of different types
//        int integerVar = 10;
//        float decimalVar = 3.15;
//        double doubleVar = 1.000000003;
//        char charVar = 'e';
//        NSLog(@"Newly created variables are %i, %f, %f, %c", integerVar, decimalVar, doubleVar, charVar);
//        
//        //declare new variables for each of the different Obj-C types and use them in an NSLog sentence
//        int number;
//        number = 12;
//        
//        float smallDec;
//        smallDec = 3.1415;
//        
//        double bigDec;
//        bigDec = 25.123456;
//        
//        char oneLetter;
//        oneLetter = 'k';
//        
//        NSLog(@"number is: %i", number);
//        NSLog(@"smallDec is: %f", smallDec);
//        NSLog(@"bigDec is: %f", bigDec);
//        NSLog(@"oneLetter is: %c", oneLetter);
//        
//        //create different values and do arithmatic
//        int four = 4;
//        int three = 3;
//        int five = 5;
//        int seven = 7;
//        int eight = 8;
//        int sum;
//        
//        sum = four + three;
//        NSLog(@"%i + %i = %i", four, three, sum);
//        sum = seven - three;
//        NSLog(@"%i - %i = %i", seven, three, sum);
//        sum = four * five;
//        NSLog(@"%i * %i = %i", four, five, sum);
//        sum = eight / four;
//        NSLog(@"%i / %i = %i", eight, four, sum);
//        sum = eight % seven;
//        NSLog(@"%i %% %i = %i", eight, seven, sum);
//        
//        //declare variables for type casting
//        int num1 = 1;
//        int num2 = 2;
//        float num3 = 3.5;
//        float num4 = 4.7;
//        int intSum;
//        float floatSum;
//        
//        //convert values to int sum with type casting
//        intSum = (int) num3 + (int) num4 + (int) 3.78;
//        NSLog(@"%f + %f + 3 = %i", num3, num4, intSum);
//        //convert values to float sum
//        floatSum = (float) num1 + (float) num2;
//        NSLog(@"%i + %i = %f", num1, num2, floatSum);
//        
//        //create variables, update their values with the assignment operators, test on console
//        int number1 = 3;
//        int number2 = 7;
//        //addition assignment operator
//        number1 += 9;
//        number2 += 17;
//        NSLog(@"%i + %i = %i", number1, number2, number1 + number2);
//        
//        //create a program that converts 27F to degrees Celcius, using the formula C = (F - 32)/ 1.8
//        int degreesF = 27;
//        int degreesC = (degreesF - 32) / 1.8;
//        NSLog(@"%i degrees Fahrenheit is %i degrees Celcius", degreesF, degreesC);
//        
//        char c, d;
//        c = 'd';
//        d = c;
//        NSLog(@"d = %c", d);
//        
//        //write a program to evaluate this polynomial, 3x^3 - 5x^2 + 6, x = 2.55
//        float x = 2.55;
//        float result = (3 * (x * x * x)) - (5 * (x * x)) + 6;
//        NSLog(@"f(%f) = 3x^3 - 5x^2 + 6 equals: %f", x, result);
//  
//        long double result2 = (3.31 * 0.00000001 + 2.01 * 0.0000001) / (7.16 * 0.000001 + 2.01 * 0.00000001);
//        NSLog(@"The very small result is: %Lf", result2);
//    }
//    return 0;
//}
