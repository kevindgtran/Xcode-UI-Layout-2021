//
//  Rectangle.h
//  RectangleClass
//
//  Created by Kevin Tran on 9/8/17.
//  Copyright © 2017 com.example. All rights reserved.
//
@class XYPoint;
@interface Rectangle: NSObject

@property float width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(float) width;
-(float) height;
-(float) area;
-(float) perimeter;
-(void) setWidth: (float) w setHeight: (float) h;

@end
