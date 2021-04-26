////
////  chapter6Examples.m
////  prog1
////
////  Created by Kevin Tran on 9/6/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
////create a program that asks the user for a number, the returns its absolute value
////ask the user for a number, store number in userResponse variable
////check if number is a negative, if true then convert to positive and return
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//      
////        int userResponse;
////        
////        NSLog(@"Enter a number value");
////        scanf("%i", &userResponse);
////        
////        if (userResponse < 0) {
////            userResponse = -(userResponse);
////        }
////        
////        NSLog(@"The absolute value is %i", userResponse);
//        
//        
//    //build a program that asks the user for a number and returns if its either true or false
//    //ask the user for a number, store value in a usersNumber variable
//    //check of usersNumber is evenly divisible by 2, if true, print "%i is even" or "%i is odd"
////        int usersNumber;
////        
////        NSLog(@"Enter a number");
////        scanf("%i", &usersNumber);
////        
////        if (usersNumber % 2 == 0) {
////            NSLog(@"%i is even!", usersNumber);
////        } else {
////            NSLog(@"%i is odd!", usersNumber);
////        }
//        
//        //create a program that asks the user for a year and replies if it is a leap year or not
//        //ask the user for a number, store said number in usersResponseYear
//        //determine if the number is evenly divisible by 4, divisible by 100 && 400
//        
////    int usersResponseYear;
////    NSLog(@"Please enter a year");
////    scanf("%i", &usersResponseYear);
////        
////    if ((usersResponseYear % 4 == 0 && usersResponseYear % 100 != 0) || usersResponseYear % 400 == 0)
////    {
////        NSLog(@"is a leap year!");
////    } else {
////        NSLog(@"is not a leap year");
////    }
//        
////        int value = -8;
////        if (value > 0) {
////            NSLog(@"positive");
////        } else if (value == 0) {
////            NSLog(@"zero");
////        } else {
////            NSLog(@"negative");
////        }
//        
//        //build a program that takes in a single character, and returns if its an alphabetic character, number or special character
//        //ask the user for a single character, determine character type with if statements and return the correct determined type
//        
////        char character;
////        
////        NSLog(@"enter a character");
////        scanf(" %c", &character);
////        
////        if ((character >= 'a' && character <= 'z') || (character >= 'A' && character <= 'Z')) {
////            NSLog(@"alphbet character");
////        } else if (character <= '9' && character >= '0') {
////            NSLog(@"numeric character");
////        } else {
////            NSLog(@"special character");
////        }
//        
////        //build a program that takes in an arithmatic character and returns its function
////        char symbol;
////        symbol = '&';
////        
////        switch (symbol) {
////            case '+':
////                NSLog(@"addition");
////                break;
////            case '-':
////                NSLog(@"subtraction");
////                break;
////            case '*':
////                NSLog(@"multiplication");
////                break;
////            case '/':
////                NSLog(@"division");
////                break;
////            default:
////                NSLog(@"not a valid arithmatic expression");
////                break;
////        }
//        
//        //use the terinary operator
//        BOOL value = true;
//        NSString *x = @"yes";
//        NSString *y = @"no";
//        NSString *result;
//        
//        result = value ? x : y;
//        
//        NSLog(@"%@", result);
//        
//        
//        
//        
//    }// end of autoreleasepool
//    return 0;
//}
