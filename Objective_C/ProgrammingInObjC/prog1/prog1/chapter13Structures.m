////
////  chapter13Structures.m
////  prog1
////
////  Created by Kevin Tran on 9/22/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        //Declare a new struct type named Date with 3 variables of integer type
//        struct Date
//        {
//            int month;
//            int day, year;
//        };
//        
//        //Declare new variables of our Date type
//        struct Date myBirthday;
//        struct Date today;
//    
//        //Set the dates for the 2 new variables
//        myBirthday.day = 2;
//        myBirthday.month = 10;
//        myBirthday.year = 1987;
//        NSLog(@"My Birthday is on %i/%i/%i", myBirthday.month, myBirthday.day, myBirthday.year);
//        
//        today.day = 22;
//        today.month = 9;
//        today.year = 2017;
//        NSLog(@"Today's date is %i/%i/%i", today.month, today.day, today.year);
//        
//        //declare a struct type named Humidity with 4 properties: Current, Low, High and currentTemp, set values and print the humidity readings to the console
//        struct Humidity
//        {
//            int currentHumidity, low, high, currentTemp;
//        };
//        
//        struct Humidity aptHumidity;
//        aptHumidity.currentHumidity = 43;
//        aptHumidity.low = 40;
//        aptHumidity.high = 55;
//        aptHumidity.currentTemp = 70;
//        
//        NSLog(@"The humidity readings are current humidity: %i%%, low: %i%%, high: %i%%, current temperature: %i%%", aptHumidity.currentHumidity, aptHumidity.low, aptHumidity.high, aptHumidity.currentTemp);
//        
//        //Initializing all the properties of a struct is similar to initializing an array by setting its values in curly brackets in the order of the variables
//        struct Date tomorrow = { 9, 24, 2017 };
//        NSLog(@"Tomorrows date is %i/%i/%i", tomorrow.month, tomorrow.day, tomorrow.year);
//        
//        //Declare a new struct named BBQTemps with the cooking temps for meats, then set their values using the dot notation method
//        struct BBQTemps
//        {
//            int poultry, beef, pork;
//        };
//        
//        struct BBQTemps bbqTemperatureGuide = { .poultry = 165, .beef = 145, .pork = 145 };
//        NSLog(@"According to USDA's minimum internal cooking temperatures for meat are: \nPoultry = %i°\nBeef = %i°\nPork = %i°", bbqTemperatureGuide.poultry, bbqTemperatureGuide.beef, bbqTemperatureGuide.pork );
//        
//    }
//    return 0;
//}
