////
////  XYPoint.m
////  RectangleClass
////
////  Created by Kevin Tran on 9/10/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//#import "XYPoint.h"
//#import "Rectangle.h"
//
////implementation section - class method and property definitions
//@implementation XYPoint
//
//@synthesize x, y;
//
//-(void) setX:(float)xVal setY:(float)yVal
//{
//    x = xVal;
//    y = yVal;
//}
//
//@end
//
//////program section to test Rectangle and XYPoint classes
////int main (int argc, char * argv[])
////{
////    @autoreleasepool {
////        
////        Rectangle *myRect = [[Rectangle alloc] init];
////        XYPoint *myPoint = [[XYPoint alloc] init];
////        
////        [myPoint setX:100 setY:200];
////        
////        [myRect setWidth:5 setHeight:8];
////        myRect.origin = myPoint;
////        
////        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
////        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
////        NSLog(@"Area = %i, Perimeter = %i", myRect.area, myRect.perimeter);
////
////    }
////    return 0;
////}
//
////program 8.5
////int main (int argc, char * argv[])
////{
////    @autoreleasepool {
////        Rectangle *myRect = [[Rectangle alloc] init];
////        XYPoint *myPoint = [[XYPoint alloc] init];
////        
////        [myPoint setX:100 setY:200]; //set myPoint's X & Y location
////        [myRect setWidth:5 setHeight:8]; //set myRect's width and height
////        
////        myRect.origin = myPoint; //set myRect's origin to myPoint's X and Y's location
////        
////        //print myRect's origin
////        NSLog(@"myRect's origin is located at X: %f, Y: %f", myRect.origin.x, myRect.origin.y);
////        
////        //update the myPoint's origin X and Y
////        [myPoint setX:50 setY:50];
////        
////        //print the points new location
////        NSLog(@"The Points new location is X: %f, Y: %f", myPoint.x, myPoint.y);
////        
////    }
////    return 0;
////}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
