////
////  chapter13Blocks.m
////  prog1
////
////  Created by Kevin Tran on 9/22/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
////Declare an external global block assigned to a variable that takes in an int argument and sums up all the numbers from zero to that number
//void (^addUpTo) (int) =
//^(int num)
//{
//    int i, totalAddedUpNumber = 0;
//    
//    for (i = 1; i <= num; ++i) {
//        totalAddedUpNumber += i;
//    }
//    
//    NSLog(@"All the numbers added up to %i is: %i", num, totalAddedUpNumber);
//};
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//
//        //Declare a variable set to a block that prints hello world to the console
//        void (^greeting) (void) =
//        ^(void)
//        {
//            NSLog(@"Hello world");
//        };
//        greeting();
//        
//        //Declare a variable and set its value to a block that says "We're studying Blocks in Objective-C!"
//        void (^studying) (void) =
//        ^void
//        {
//            NSLog(@"We're studying Blocks in Objective-C!");
//        };
//        studying();
//        
//        addUpTo(4);
//        
//    }
//    return 0;
//}
