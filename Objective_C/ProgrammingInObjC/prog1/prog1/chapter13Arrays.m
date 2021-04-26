////
////  chapter13Examples.m
////  prog1
////
////  Created by Kevin Tran on 9/21/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        //setup an array with initial values
//        int aListOfNums[7] = {1,2,3,4,5,6,7};
//        int aBigListOfNums[25] = { 0, 1, 2, 3 };
//        char aListOfLetters[26] = {'a', 'b', 'c'};
//        NSLog(@"The first element in aListOfNums is: %i", aListOfNums[0] );
//        NSLog(@"The 12th item in aBigListOfNums should be set to zero = %i", aBigListOfNums[12]);
//        NSLog(@"The last letter in aListOfLetters should be set to zero = %c", aListOfLetters[25]);
//        
//        //assignm array elements within the array brackets
//        int number = 100;
//        int studentScores[] = { [0] = number, [5] = number + 5, [8] = number + 8, [9] = number + 9};
//        NSLog(@"Each student scored exactly their student subscript number, zero = %i, five = %i, eight = %i, ninth = %i", studentScores[0], studentScores[5], studentScores[8], studentScores[9]);
//        
//        //declare an open array
//        //int someList[] = {};
//        
//        //We can omit the array amount if we explicitly declare the array values
//        char myName[] = {'K', 'e', 'v', 'i', 'n'};
//        int i;
//        
//        for (i = 0; i <= 4; ++i) {
//            NSLog(@"%c", myName[i]);
//        }
//        
//        //Declare an empty 2 dimensional array
//        //int first2DimensionalArray[3][3];
//        
//        //Declare and initialize a 2 dimensional array with values
//        int second2DimensionalArray[2][3] = {
//            { 3, 7, 11 },
//            { 5, 87, -8}
//        };
//        
//        //Declare and initialize SOME of a 2 dimensional array with values and leave the remaining to 0
//        int third2DimensionalArray[4][5] = {
//            {1, 2, 3, 4},
//            {5, 6, 7, 8},
//            {9, 10, 11, 12}
//        };
//        
//        NSLog(@"Second row, second column value is: %i", second2DimensionalArray[1][1]);
//        NSLog(@"My favorite number is: %i", third2DimensionalArray[2][3]);
//        
//    }
//    return 0;
//}
//
//
//
//
