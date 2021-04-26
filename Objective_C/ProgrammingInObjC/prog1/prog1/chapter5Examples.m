////
////  chapter5Examples.m
////  prog1
////
////  Created by Kevin Tran on 8/31/17.
////  Copyright © 2017 com.example. All rights reserved.
//
//
//#import <Foundation/Foundation.h>
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//
//        //create program that is the sum of all values up to 200, using a for loop
//        int n;
//        int result = 0;
//        
//        for (n = 1; n <= 200; n += 1) {
//            result += n;
//        }
//        NSLog(@"The sum of all the values up to 200 is: %i", result);
//
//        //Build a program that creates a table showing the sum of the first 10 numbers
//        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
//        NSLog(@" n    Sum from 1 to n");
//        NSLog(@"---  ------------------");
//        int n2;
//        int total = 0;
//        
//        for (n2 = 1; n2 <= 10; ++n2){
//            total += n2;
//            NSLog(@"%2i        %i", n2, total);
//        }
//        
//        //Build a program that asks the user to enter a numeric value then display the sum of all the numbers up to that value
//        int n3;
//        int userNumber;
//        int total3 = 0;
//        
//        NSLog(@"enter a number");
//        scanf("%i", &userNumber);
//        
//        for(n3 = 1; n3 <= userNumber; ++n3){
//            total3 += n3;
//        }
//        NSLog(@"You chose %i, all the numbers added up to %i equals: %i", userNumber, userNumber, total);
//        
//        //Build a program that asks the user 5 times, to enter and number and return that values sum of all previous values
//        int n4;
//        
//        for (n4 = 1; n4 <= 5; ++n4) {
//            //within each loop, ask user for a number and provide its values sums,
//            //create for loop, enter in usersNumber and update userTotalSum
//            int m;
//            int userNumber;
//            int userTotalSum = 0;
//            
//            NSLog(@"please enter a number");
//            scanf("%i", &userNumber);
//            
//            for (m = 1; m <= userNumber; ++m) {
//                userTotalSum += m;
//            }
//            
//            NSLog(@"Sum is: %i", userTotalSum);
//        }
//        
//        //Build a program that counts down from 10 to one, using a while loop
//        int n5 = 10;
//        while (n5 > 0) {
//            NSLog(@"%2i", n5);
//            --n5;
//        }
//        
//        //Build a program that asks the user for a number, returns the number characters in reverse order, ie 1234 == 4321
//        //ask user for number
//        int usersNumber;
//        int lastDigit;
//        NSLog(@"Please enter a big number");
//        scanf("%i", &usersNumber);
//        
//        //iterate and reverse order
//        while (usersNumber != 0){
//            lastDigit = usersNumber % 10;
//            NSLog(@"%i", lastDigit);
//            usersNumber /= 10;
//        }
//    }//end of autoreleasepool
//    return 0;
//}
