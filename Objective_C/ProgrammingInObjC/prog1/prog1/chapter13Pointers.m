////
////  chapter13Pointers.m
////  prog1
////
////  Created by Kevin Tran on 9/23/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
//void exchange (int *pint1, int *pint2)
//{
//    int temp;
//    
//    temp = *pint1;
//    *pint1 = *pint2;  //Always declare pointers with their operators (indirect or address)
//    *pint2 = temp;
//    
//}
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        //declare 3 variables assigning each the reference pointer of the previous and print the values
//        int count = 10, x;
//        int *intPnt;         //intPnt declared to be of type "pointer to int"
//        intPnt = &count;     //intPnt variable set to the address operator of count, which is 10. Address operator points to that variables value
//        x = *intPnt;         //x variable set to the indirect operator, which tells the system intPnt is a pointer to another data item
//        NSLog(@"The value of x = %i, count = %i", x, count);
//        
//        //declare 2 variables, assign a character to one, then assign the 2nd to the address operator of the first. Print both variables, Change the first variable then print both, change the first variable again and print both out
//        char c = 'k';                           //the character variable c is defined and initialized to 'k'
//        char *cPtr = &c;                        //the cPtr variable is defined to be of type "pointer to char" - meaning whatever value is stored in cPtr should be an                                 indirect reference / pointer to char, which is assigned the address operator / pointer to the variable c
//        NSLog(@"c = %c, cPtr = %c", c, *cPtr);  //c is printing its value, while *cPtr is printing the reference / pointer
//        c = 'B';
//        NSLog(@"c = %c, cPtr = %c", c, *cPtr);
//        c = '$';
//        NSLog(@"c = %c, cPtr = %c", c, *cPtr);
//        
//        //Now change value that cPtr points to...
//        *cPtr = 'G';
//        NSLog(@"c = %c, cPtr = %c", c, *cPtr);   //this changes the value that cPtr is referencing / pointing to, henceforth changes the value of c
//        
//        //create a struct then a variable that references that struct
//        struct Date
//        {
//            int month, day, year;
//        };
//        struct Date today;
//        struct Date *tomorrow;
//        
//        tomorrow = &today;
//        (*tomorrow).day = 24;    //the pointer is in parenthesis becuase the dot operation has higher precedence
//                                 //becuase pointers to structs are so common, there's the "structure pointer" operator '->'
//        
//        //Create a struct named CalendarDate with 3 properties: day, month, year. Setup a pointer to the struct, set its values using the structure pointer operator and print the date to the console.
//        struct CalendarDate
//        {
//            int day, month, year;
//        };
//        struct CalendarDate holiday;
//        struct CalendarDate *thanksGiving;
//        
//        thanksGiving = &holiday;
//        thanksGiving->day = 23;
//        thanksGiving->month = 11;
//        thanksGiving->year = 2017;
//        NSLog(@"This year Thanksgiving will on %i/%i/%i", holiday.month, (*thanksGiving).day, thanksGiving->year % 100);
//        
//        //Program 13.14
//        int i1 = -5, i2 = 66, *p1 = &i1, *p2 = &i2;
//        NSLog(@"i1 = %i, i2 = %i, *p1 = %i, *p2 = %i", i1, i2, *p1, *p2);
//        
//        exchange(p1, p2);
//        NSLog(@"i1 = %i, i2 = %i", i1, i2);
//        //temp = *p1 = -5;
//        //*p1 = *p2 = 66;
//        //*p2 = temp = -5;
//        //"i1 = 66, i2 = -5";
//        
//        exchange(&i1, &i2);
//        NSLog(@"i1 = %i, i2 = %i", i1, i2);
//        //i1 = 66, i2 = -5, *p1 = &i1, *p2 = &i2  //updated values
//        //temp = *p1 = 66;
//        //*p1 = *p2 = -5;
//        //*p2 = temp = 66;
//        //"i1 = -5, i2 = 66";
//        
//        
//    }
//    return 0;
//}

