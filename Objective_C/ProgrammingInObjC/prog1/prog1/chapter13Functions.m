////
////  chapter13Functions.m
////  prog1
////
////  Created by Kevin Tran on 9/22/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
////declare a function that prints hello world
//void sayHello (void)
//{
//    NSLog(@"Hello world");
//}
//
////Declare another function that prints the time
//void currentTime (void)
//{
//    NSLog(@"The time is 2pm");
//}
//
////Build a function that takes an argument type string called name and prints hello name
//void greetPerson (NSString* name)
//{
//    NSLog(@"Hello %@", name);
//}
//
////Build a function that takes an argument type int and sums all numbers starting at 0 consecutively up to the number passed in
//void addingUpNumbers (int theBigNum)
//{
//    int i, finalNumber = 0;
//    
//    for (i = 0; i <= theBigNum; ++i) {
//        finalNumber += i;
//    }
//    
//    NSLog(@"%i", finalNumber);
//}
//
////Build a function that takes in 2 arguments and finds the lowest common denominator
//int lowestCommonDenominator (int first, int second)
//{
//    int temp;
//    
//    while ( second != 0) {
//        temp = first % second;
//        first = second;
//        second = temp;
//    }
//    
//    NSLog(@"The lowest common denominator is %i", first);
//    return first;
//
//}
//
////Build a simple addition function that omits the return type in its function declaration (bad practice!)
//int addingTwoNumbers (int x, int y)
//{
//    int sum = x + y;
//    NSLog(@"%i", sum);
//    return sum;
//}
//
////Build a function that takes in a single array element and adds 3 to it
//int add3 (int list[])
//{
//    int final = list[4] + 3;
//    NSLog(@"%i", final);
//    return final;
//}
//
////Build a function that takes an entire array and sends back the entire array adding 3 to each element
//int add1 (int list[])
//{
//    int i, final = 0;
//    
//    for (i = 0; i <= 4; ++i){
//        final = list[i];
//        NSLog(@"%i", final);
//    }
//    
//    return final;
//}
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        int list[5] = {1,2,3,4,5};
//        //sayHello();
//        //currentTime();
//        //addingUpNumbers(3);
//        //greetPerson(@"Kevin");
//        //lowestCommonDenominator(83, 240);
//        //addingTwoNumbers(3, 2);
//        //add3(list);
//        //add1(list);
//    
//    }
//    return 0;
//}
