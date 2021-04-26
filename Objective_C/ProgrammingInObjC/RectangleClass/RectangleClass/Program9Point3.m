////
////  Program9Point3.m
////  RectangleClass
////
////  Created by Kevin Tran on 9/14/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//#import "Square.h"
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        Square *mySquare = [[Square alloc] init];
//        
//        //isMemberOfClass - member of a certain class
//        if ( [mySquare isMemberOfClass: [Square class]] == true )
//            NSLog(@"mySquare is a member of the Square class");
//        
//        //isKindOfClass - kind of a certain class
//        if ( [mySquare isKindOfClass:[Square class]] == true )
//            NSLog(@"mySquare is a kind of Square class");
//        
//        if ( [mySquare isKindOfClass:[Rectangle class]] == 1 )
//            NSLog(@"mySquare is also the kind of Rectangle class");
//        
//        //example of possible incorrect kind of class exception
//        @try {
//            if ( [mySquare isKindOfClass:[NSObject class]] == YES )
//                NSLog(@"mySquare is also also the kind of NSObject class");
//        } @catch (NSException *exception) {
//            NSLog(@"ERROR");
//        } @finally {
//        }
//        
//        //example of possible array out of bounds exception
//        NSArray *myArray = [[NSArray alloc] init];
//        @try {
//            [myArray objectAtIndex:2];
//        } @catch (NSException *exception) {
//            NSLog(@"Exception Name: %@", exception.name);
//            NSLog(@"Exception Reason: %@", exception.reason);
//        } @finally {
//        }
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
//    }
//    
//    
//    return 0;
//}
