////
////  chapter15Exercises.m
////  prog1
////
////  Created by Kevin Tran on 9/26/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        NSNumber *myNumber, *floatNumber, *intNumber;
//        NSInteger myInt;
//        
//        //integer value
//        intNumber = [NSNumber numberWithInteger: 100]; //class method is used to initialize an object, set its value with the numberWith... class method
//        myInt = [intNumber integerValue]; //when working with NSNumber we have to express its format, cast its format
//        NSLog(@"%li", (long) myInt);
//        
//        //long value
//        myNumber = [NSNumber numberWithLong: 0xabcdef];
//        NSLog(@"%lx", [myNumber longValue]); //when working with NSNumber, always express its format
//        
//        //char value
//        myNumber = [NSNumber numberWithChar: 'c']; //use numberWithChar message to assign a character value to a NSNumber data type
//        NSLog(@"%c", [myNumber charValue]); //when printing an NSNumber object, need to explicitly express the NSNumber format by calling the ____Value message
//        
//        myNumber = [NSNumber numberWithChar:'X'];
//        NSLog(@"%c", [myNumber charValue]);
//        
//        //float value
//        floatNumber = [NSNumber numberWithFloat: 100.00];
//        NSLog(@"%f", [floatNumber floatValue]); //best to work with NSNumber data type
//        
//        //double value
//        myNumber = [NSNumber numberWithDouble:12345e+15];
//        NSLog(@"%g", [myNumber doubleValue]);
//    
//        //test for equality
//        if ([intNumber isEqualToNumber: floatNumber] == 1) { //Equality check if object is of equal number to another object use isEqualToNumber method
//            NSLog(@"Numbers are equal");
//        } else {
//            NSLog(@"Numbers are not equal");
//        }
//        
//        //test if one number is <, >, == to another number
//        //if ([intNumber compare: myNumber] == NSOrderedAscending) {
//            //NSLog(@"First number is less than second number");
//        //}
//        
//        //test with the compare method in a switch statement
//        switch ([myNumber compare: intNumber]) {
//            case NSOrderedAscending:
//                NSLog(@"First number is less than second number");
//                break;
//            case NSOrderedSame:
//                NSLog(@"First number is the same as the second number");
//                break;
//            case NSOrderedDescending:
//                NSLog(@"Frist number is bigger than the second number");
//                break;
//            default:
//                NSLog(@"unable to compare both numbers");
//                break;
//        }
//        
//        //Can't change the value of an NSNumber object after its been created - CORRECTION - Each time we want to change an NSNumber object we have to create a new object
//        //this causes a crash
//        //NSNumber *myNewNumber = [[NSNumber alloc] initWithInt:100];
//        //[myNewNumber initWithInt:1000];
//        
//        //instead we have to create a new NSObject object, like this
//        NSNumber *myNewNumber;
//        myNewNumber = [NSNumber numberWithInteger:100];
//        NSLog(@"%li", (long) [myNewNumber integerValue]);
//        
//        myNewNumber = [NSNumber numberWithInteger:1000];
//        NSLog(@"%li", (long) [myNewNumber integerValue]);
//        
//        //We can use the @expression notation to quickly create NSNumber objects
//        NSNumber *myNumber2, *floatNumber2, *intNumber2; //declare 3 variables pointing to NSNumber class
//        NSInteger myInt2;
//        
//        //integer
//        myNumber2 = @50;  //use the @expression notation to quickly create an NSNumber object with a value
//        myInt2 = [myNumber2 integerValue];
//        NSLog(@"%li", (long) myInt2); //when printing integer values we want to cast it to a long integer
//        
//        //float
//        floatNumber2 = @200;
//        NSLog(@"%g", [floatNumber2 floatValue]);  //always make sure to convert NSNumber objects into the right character format and object type
//        
//        //integer
//        intNumber2 = @12;
//        NSLog(@"%li", (long) [intNumber2 integerValue]);
//        
//    }
//    return 0;
//}
//
//
