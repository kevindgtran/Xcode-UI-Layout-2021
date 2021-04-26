////
////  CalculatorClass.m
////  prog1
////
////  Created by Kevin Tran on 9/5/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
////interface section
//@interface Calculator : NSObject
//
//-(double) accumulator;
//-(void) setAccumulator: (double) value;
//-(void) add: (double) value;
//-(void) subtract: (double) value;
//-(void) multiply: (double) value;
//-(void) divide: (double) value;
//-(void) clear;
//
//@end
//
////implementation section
//@implementation Calculator
//{
//    double accumulator;
//}
//
//-(double) accumulator
//{
//    return accumulator;
//}
//
//-(void) setAccumulator:(double) value
//{
//    accumulator = value;
//}
//
//-(void) clear
//{
//    accumulator = 0;
//}
//
//-(void) add: (double) value
//{
//    accumulator += value;
//}
//
//-(void) subtract: (double) value
//{
//    accumulator -= value;
//}
//
//-(void) divide:(double) value
//{
//    accumulator /= value;
//}
//
//-(void) multiply:(double) value
//{
//    accumulator *= value;
//}
//
//@end
//
////program section
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//    
//        double value1, value2;
//        char operator;
//        
//        Calculator *MyCalculator = [[Calculator alloc] init];
//        
//        NSLog(@"type in your expression");
//        scanf("%lf %c %lf", &value1, &operator, &value2);
//        [MyCalculator setAccumulator: value1];
//        
//        switch (operator) {
//            case '+':
//                NSLog(@"%lf", value1 + value2);
//                break;
//            case '-':
//                NSLog(@"%lf", value1 - value2);
//                break;
//            case '*':
//                NSLog(@"%lf", value1 * value2);
//                break;
//            case '/':
//                if (value2 != 0){
//                    NSLog(@"%lf", value1 / value2);
//                } else {
//                    NSLog(@"Unable to divide by zero");
//                }
//                break;
//            default:
//                NSLog(@"invalid arithmatic operation");
//                break;
//        }
//    }
//    return 0;
//}
