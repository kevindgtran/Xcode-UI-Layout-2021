////
////  chapter15NSString.m
////  prog1
////
////  Created by Kevin Tran on 9/26/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        //NSString has over 100 methods to work with it!
//        
//        //Initialize a new NSString
//        NSString *stringOne = @"We're programming up a storm!"; //the constant character string, using the expression notation is assigned to the stringOne object which is a pointer to the NSString class
//        NSLog(@"%@", stringOne); //printing the value (constant character string) in stringOne, using the format character "%@" for strings and other objects.
//        
//        //Initialize a new NSNumber and print it using the format character "%@"
//        NSNumber *anotherNumber = @17;
//        NSLog(@"%@", anotherNumber);
//        
//        //NSString (immutable string) operations
//        NSString *string1 = @"This is string one";  //declare 3 immutable string objects - pointing to the NSString class
//        NSString *string2 = @"This is string two";
//        NSString *res;
//        //NSComparisonResult compareResult;
//        
//        //count the characters in a string
//        NSLog(@"string1's count is: %lu", [string1 length]); //Use length method to find string length - which returns an unsigned integer value (UInteger), format character used is long unsigned
//        
//        //copy one string to another
//        res = [NSString stringWithString:string1]; //use the NSString class method to copy the contents of another string and assign it to a variable of NSString class
//        NSLog(@"res is now == %@", res);
//        
//        //copy one string to the end of another
//        string2 = [string1 stringByAppendingString:string2]; //use the NSString instance method stringByAppendingString to append a string to another string
//        NSLog(@"The new string2 is: %@", string2); //print the newly appended string with the format character "%@"
//        
//        //test if 2 strings are equal using the isEqualString method
//        if ([res isEqualToString:string1] == YES) {
//            NSLog(@"res and string1 are equal");
//        } else  {
//            NSLog(@"res and string1 are NOT equal");
//        }
//        
//        //test if one string is <, >, == to another string
//        switch ([string1 compare:string2]) {
//            case NSOrderedAscending:
//                NSLog(@"string1 is less than string2");
//                break;
//            case NSOrderedSame:
//                NSLog(@"string1 is the same as string2");
//                break;
//            case NSOrderedDescending:
//                NSLog(@"string1 is greater than string2");
//                break;
//            default:
//                NSLog(@"Unable to compare string1 and string2");
//                break;
//        }
//        
//        //lets convert a string to uppercase
//        res = [string1 uppercaseString]; //uppercase a string using the upercaseString method
//        NSLog(@"string1 uppercased is: %@", res); //print the string using the format character
//        
//        //now lets convert that string back to lower case
//        res = [string1 lowercaseString];
//        NSLog(@"string1 lowercased is: %@", res);
//        
//        //print the original cased string
//        NSLog(@"string1 originally is: %@", string1); //assigned previous upper/lowercased strings to res, so we can still print the original string
//        
//        //More string operations
//        NSString *anotherString1 = @"This is string A";
//        NSString *newRes;
//        
//        //extract the first three letters of a string
//        newRes = [anotherString1 substringToIndex:3]; //use the substringToIndex to return a substring of an NSString object - doesn't return the character at the index value
//        NSLog(@"The substring is: %@", newRes); //print the substring in an NSLog routine using the format character "%@"
//        //more string subscripting on page 324
//        
//        
//        
//        //immutable strings
//        NSString *someString1 = @"This is string A";
//        NSMutableString *mutableString;   //declares a mutable string called mutableString - (contents can change during execution of the program)
//        
//        //create mutable string from nonmutable
//        mutableString = [NSMutableString stringWithString:someString1]; //will make a copy of string passed in and return copy, we then assign it to the mutable string
//        NSLog(@"%@", mutableString);
//        
//        //insert characters
//        [mutableString insertString:@" changed!/ mutable" atIndex:7]; //we can change the mutable string by inserting a constant character string into any index location with the insertString method
//        NSLog(@"%@", mutableString);
//        
//        //concatenation of strings with (if insert at end)
//        [mutableString insertString:@" and another string B" atIndex:[mutableString length]]; //use the insertString, pass in a constant character string, then pass in the string length to insert at the end.
//        NSLog(@"%@", mutableString);
//        
//        //concatenate using the append directly, successful becuase mutableString is an NSMutableString object
//        [mutableString appendString:@" and string C!"]; //we can use the appendString instance method to append a string directly
//        NSLog(@"%@", mutableString);
//        
//        //delete characters in a range
//        [mutableString deleteCharactersInRange:NSMakeRange(16, 9)]; //we can delete characters in a range, using the deleteCharactersInRange, then pass in NSMakeRange as an argument. The range is (indexToStart, numberOfCharactersToDelete)!
//        NSLog(@"%@!!!", mutableString);
//        
//        //set the mutable string directly - MUST USE A METHOD TO CREATE A "NEW" NSSTRING OBJECT
//        [mutableString setString:@"This is the new string A"];
//        NSLog(@"%@", mutableString);
//        
//        //find and replace characters in a range
//        [mutableString replaceCharactersInRange:NSMakeRange(12, 0) withString:@"BOOM! "]; //just like the deleteCharactersInRange method, the range argument is in this format (characterIndexToStart, numberOfCharactersToReplace)
//        NSLog(@"%@", mutableString);
//        
//        //create an empty string
//        NSMutableString *emptyString;
//        emptyString = [NSMutableString string];
//        NSLog(@"%@", emptyString);
//        NSLog(@"%lu", [emptyString length]);
//        [emptyString setString:@"Hello World"];
//        NSLog(@"%@", emptyString);
//        if ([emptyString hasPrefix:@"Hello"] == 1)
//        {
//            NSLog(@"Starts with Hello");
//        }
//    }
//    return 0;
//}

