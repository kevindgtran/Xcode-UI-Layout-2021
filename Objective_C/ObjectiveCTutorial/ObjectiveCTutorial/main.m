//
//  main.m
//  ObjectiveCTutorial
//
//  Created by Kevin Tran on 8/21/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {//function called on app launch
    @autoreleasepool {//ObjC ARC - clears unused memory
        
        //print statement
        //NSLog(@"Hello World");
        
        //create an empty string pointer, nil == nonexistant object in memory
        //NSString *nothing = nil;
        //NSLog(@"nothing is at location: %p", nothing);
        
        //create a pointer to a string in memory
        //NSString *quote = @"lifes like a box of chocolates";
        //NSLog(@"%@", quote);
        //log the length of the newly created NSString
        //NSLog(@"The quote is %d characters long", (int)[quote length]);
       
        //log the character at index 7
        //NSLog(@"The character at index 7 is: %c", (char)[quote characterAtIndex:7]);
        
        //create 3 strings and see if they're equal
        //NSString *firstString = @"Hello World";
        //NSString *secondString = @"Hello World";
        //NSString *thirdString = @"Hello there";
        //BOOL isFirstAndSecondEqual = [firstString isEqualToString:secondString];
        //NSLog(@"The first and second string are equal: %d", isFirstAndSecondEqual);
        //BOOL isSecondAndThirdEqual = [secondString isEqualToString:thirdString];
        //NSLog(@"The second and third string are equal: %d", isSecondAndThirdEqual);
        //NSLog(@"The third and first string are equal: %d", [thirdString isEqualToString:firstString]);
        
        //convert NSString into string - nested messages
        
        
    }
    return 0;
}
