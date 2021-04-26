////
////  chapter5Exercises.m
////  prog1
////
////  Created by Kevin Tran on 9/1/17.
////  Copyright © 2017 com.example. All rights reserved.
//
//#import <Foundation/Foundation.h>
//
//int main (int argc, char * argv [])
//{
//    @autoreleasepool {
//
//        //Write a program that displays a table of n and n*2, of n ranging from 1 to 10
//        NSLog(@" n      n * 2  ");
//        NSLog(@"---  -----------");
//        int n;
//        for (n = 1; n <= 10; ++n) {
//            NSLog(@"%2i       %2i", n, n * 2);
//        }
//        
//        //create a program that calculates the triangular number of every 5th value from 5 to 50
//        int n2, triangularNum;
//        for (n2 = 5; n2 <= 50; n2 += 5) {
//            triangularNum = n2 * (n2 + 1) / 2;
//            NSLog(@"%4i", triangularNum);
//        }
//        
//        //Build an algorithm that takes returns 10 factorial aka 10!
//        //Factorial = the product of all values consecutively descending from n, ie 3! = 3 * 2 * 1
//        //loop through descending order from 10, each value of our iteration is multiplied and add to our factorialTotal variable, return factorialTotal
//        int n3 = 10;
//        int factorialTotal = 1;
//        
//        while (n3 >= 1) {
//            factorialTotal *= n3;
//            --n3;
//        }
//        NSLog(@"%i", factorialTotal);
//
//        
//        int n4;
//        int userResponse;
//        
//        NSLog(@"Please enter the number for the triangular");
//        scanf("%i", &userResponse);
//        
//        for (n4 = 1; n4 <= userResponse; ++n4) {
//            //within each loop, ask user for a number and provide its values sums,
//            //create for loop, enter in usersNumber and update userTotalSum
//            int m;
//            int userNumber;
//            int userTotalSum = 0;
//            NSLog(@"please enter a number");
//            scanf("%i", &userNumber);
//
//            for (m = 1; m <= userNumber; ++m) {
//                userTotalSum += m;
//            }
//            NSLog(@"Sum is: %i", userTotalSum);
//        }
//        
//        //review the modulus sign
//        int ten = 3;
//        int five = 5;
//        int sum = ten % five;
//        NSLog(@"%i", sum);
//
//        float f1 = 123.125, f2;
//        int i1, i2 = -150;
//        
//        i1 = f1;
//        NSLog(@"%f assigned to an int produces %i", f1, i1);
//        
//        f2 = i2;
//        NSLog(@"%i assigned to a float produces %f", i2, f1);
//    }//end of autorepleasepool
//    return 0;
//}
