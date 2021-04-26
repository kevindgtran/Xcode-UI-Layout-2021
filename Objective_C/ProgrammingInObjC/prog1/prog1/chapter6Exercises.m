////
////  chapter6Exercises.m
////  prog1
////
////  Created by Kevin Tran on 9/6/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
////        //build an application that asks the user for 2 numbers, see if the first number is evenly divisible by the second number and display the appropriate message
////        int firstNum;
////        int secondNum;
////        
////        NSLog(@"please enter 2 numbers");
////        scanf("%i %i", &firstNum, &secondNum);
////        
////        if (firstNum % secondNum == 0) {
////            NSLog(@"%i is evenly divisible by %i", firstNum, secondNum);
////        } else {
////            NSLog(@"%i is not evenly divisible by %i", firstNum, secondNum);
////        }
//        
//        //build a program that displays a table of all the prime numbers up to 50
//        //loop through 2-50
//        //check each if prime - if any number below it is evenly divisible, if so not prime, display only prime numbers
//        
//        int p, d, isPrime;
//        for (p = 2; p <= 50; ++p) {
//            isPrime = 1;
//            
//            for (d = 2; d < p; ++d)
//                if (p % d == 0)
//                    isPrime = 0;
//            
//                if (isPrime != 0)
//                    NSLog(@"%i", p);
//           
//        }
//       
//    }//end of autoreleasepool
//    return 0;
//}
