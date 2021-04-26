////
////  chapter15NSArray.m
////  prog1
////
////  Created by Kevin Tran on 9/27/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool{
//        //There are over 50 methods for NSArray, this NSMutableArray
//        //create an array named monthNames containing all the months of the year
//        NSArray *monthNames = [NSArray arrayWithObjects:@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"Auguest", @"September", @"October", @"November", @"December", nil]; //we create an array using the NSArray class, then call the class method - arrayWithObjects passing in constant character strings and nil - to marke the end of the list
//
//        //print all the months into a table
//        NSLog(@"Month  Name");
//        NSLog(@"=====  =====");
//        int n;
//        for (n = 1; n <= 12; ++n) {
//            NSLog(@" %2i    %@", n, monthNames[(n - 1)]);  //use the %@ format character for NSArray just like NSString
//        }
//
//        //setup another array using the shorter syntax
//        NSArray *stuff = @[@"laptop", @"book", @"headphones", @"music", @"coffee"]; //we can setup an array using the expression notation [@" ", @" ", @" "];
//        NSLog(@"            ");
//        NSLog(@"NO.   Stuff");
//        NSLog(@"===   =====");
//        int n2;
//        for (n2 = 1; n2 <= 5; ++n2) {
//            NSLog(@"%2i    %@",n2 ,stuff[n2 - 1]);
//        }
//
//        //create an array with a for loop
//        NSMutableArray *numbers = [NSMutableArray array];  //how to declare an empty mutable array object
//        int n3;
//        for (n3 = 0; n3 < 10; ++n3) {
//            numbers[n3] = @(n3);  //assigning values to an array must have the @ symbol
//        }
//        NSLog(@"%@", numbers);  //we can use the %@ format character in NSLog to print the entire array
//
//        //to add another element to the end of the array we can use the addObject
//        [numbers addObject:@10]; //use the addObject instance method with the @ symbol to add objects
//        NSLog(@"%@", numbers); //we can use the %@ format character to print an entire array
//    }
//    return 0;
//}

