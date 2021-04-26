////
////  chapter10Examples.m
////  prog1
////
////  Created by Kevin Tran on 9/18/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
////External global variables
////
////@interface Foo : NSObject
////
////-(void) setgIsGlobal: (int) val;
////
////@end
////
////@implementation Foo
////
////-(void) setgIsGlobal:(int)val
////{
////    extern int gIsGlobal; //global variable is declared
////    gIsGlobal = val; //global variable is defined with a new value
////}
////
////@end
////
//////global variable has to be defined outside of all methods/ functions including main
////int gIsGlobal = 5;
////
////int main (int argc, char * argv[])
////{
////    @autoreleasepool {
////        Foo *Bar = [[Foo alloc] init];
////        NSLog(@"%i", gIsGlobal);
////        
////        [Bar setgIsGlobal:10];
////        NSLog(@"%i", gIsGlobal);
////        
////    }
////    return 0;
////}
//
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        //build a program that asks the user for a month number and replies the number of days in that month
//        //create enum to store possible months in month variable (which the compiler reads as an integer value)
//        //ask the user to enter a month number, store value in userResponseMonth variable of month type
//        //if response is not 0, go through a switch statement, each case being a month, for months may, july, august, october, december days == 31, for months april, june, september, november days == 30, february == 28, default console log an error
////        enum month {january = 1, febuary, march, april, may, june, july, august, september, october, november, december};
////        
////        enum month userResponseMonth;
////        
////        NSLog(@"Enter a month number");
////        scanf("%i", &userResponseMonth);
////        
////        if (userResponseMonth != 0) {
////            switch (userResponseMonth) {
////                case 5:
////                case 7:
////                case 8:
////                case 10:
////                case 12:
////                    NSLog(@"That month has 31 days");
////                    break;
////                case 4:
////                case 6:
////                case 9:
////                case 11:
////                    NSLog(@"That month has 30 days");
////                    break;
////                case 2:
////                    NSLog(@"That month has 28 days");
////                    break;
////                default:
////                    NSLog(@"Can't find that month");
////                    break;
////            }
////        }
//        
////        //create an enum type called grade, with values F = 0 ... to A, declare an int variable studentGrade, define its value to 5, then display the student grade using a switch statement
////        enum grade {F = 1, D, C, B, A};
////        
////        enum grade studentGrade;
////        studentGrade = 5;
////        
////        if (studentGrade != 0) {
////            switch (studentGrade) {
////                case 1:
////                    NSLog(@"Grade F");
////                    break;
////                case 2:
////                    NSLog(@"Grade: D");
////                    break;
////                case 3:
////                    NSLog(@"Grade: C");
////                    break;
////                case 4:
////                    NSLog(@"Grade: B");
////                    break;
////                case 5:
////                    NSLog(@"Grade: A");
////                    break;
////                default:
////                    NSLog(@"Can not find Grade value");
////                    break;
////            }
////        }
//        
//        
//        
//        
//    }
//    return 0;
//}
//
//
//
//
//
