//
//  main.m
//  FractionTest
//
//  Created by Kevin Tran on 9/6/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        Fraction *resultFraction;
        
        //set two fractions to 1/4 and 1/2 and add them together
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
    
        [aFraction print];
        NSLog(@"/");
        [bFraction print];
        NSLog(@"=");
        
        resultFraction = [aFraction divide: bFraction];
        [resultFraction print];
        
        
     
    }
    return 0;
}
