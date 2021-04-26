//
//  Fraction.h
//  FractionTest
//
//  Created by Kevin Tran on 9/6/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

//the Fraction class declaration
@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print: (BOOL) b;
-(void) setTo: (int) n over: (int) d;
-(Fraction *) add: (Fraction *) f; //add method that takes a Fraction class as an argument
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;
-(double) convertToNum;

@end
