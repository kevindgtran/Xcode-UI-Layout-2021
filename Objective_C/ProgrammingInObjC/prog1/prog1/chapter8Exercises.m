////
////  chapter8Exercises.m
////  prog1
////
////  Created by Kevin Tran on 9/11/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
//////ClassA declaration and definition
//@interface ClassA : NSObject
//{
//    int x; //public variable & method declarations - will be inherited by all subclasses
//}
//-(void) initVar;
//-(void) printVar;
//
//@end
//
//@implementation ClassA
//-(void) initVar
//{
//    x = 100;
//}
//
//-(void) printVar
//{
//    NSLog(@"x = %i", x);
//}
//@end
//
//
//
//////ClassB declaration and definition
//@interface ClassB : ClassA
//
//@end
//
//@implementation ClassB
//
//-(void) initVar
//{
//    x = 500;
//}
//
//@end
//
//
//
//////classC subclassed from classB
//@interface ClassC : ClassB
//
//-(void) initVar;
//
//@end
//
//@implementation ClassC
//
//-(void) initVar
//{
//    x = 300;
//}
//
//@end
//
//
//////Exercise 1
////int main (int argc, char * argv[])
////{
////    @autoreleasepool {
////        
////        ClassA *myClassA = [[ClassA alloc] init];
////        ClassB *myClassB = [[ClassB alloc] init];
////        ClassC *myClassC = [[ClassC alloc] init];
////        
////        [myClassA initVar];
////        [myClassA printVar];
////        
////        [myClassB initVar];
////        [myClassB printVar];
////        
////        [myClassC initVar];
////        [myClassC printVar];
////        
////    }
////    return 0;
////}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
