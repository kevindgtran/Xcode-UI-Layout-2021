////
////  ClassA.m
////  prog1
////
////  Created by Kevin Tran on 9/7/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
////ClassA declaration and definition
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
////ClassB declaration and definition
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
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
////        ClassB *myClass = [[ClassB alloc] init];
////        
////        [myClass initVar];
////        
////        //print the new overrided initVar method
////        [myClass printVar];
//        
//        ClassA *classA = [[ClassA alloc] init];
//        ClassB *classB = [[ClassB alloc] init];
//        
//        [classA initVar];
//        [classA printVar];
//        
//        [classB initVar];
//        [classB printVar];
//        
//    }
//    return 0;
//}
//
//
//
//
//
