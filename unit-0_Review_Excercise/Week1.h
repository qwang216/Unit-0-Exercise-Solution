//
//  Week1.h
//  unit-0_Review_Excercise
//
//  Created by Jason Wang on 7/11/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Week1 : NSObject

-(NSString *)userInputString;

-(NSInteger)userInputInterger;

-(void)forLoopPrint1to10;

-(void)ifLoopPrint1to10;

-(void)printNumberTilln: (int)n;

-(void)printEvenNumberTilln: (int)n;

-(void)printSumOf1to10;

-(void)printSumOf1ToN: (int)n;

-(void)printSumOf1to10000;

-(void)printStringNtimes: (NSString *)s nTimes:(int)n;

-(void)printStringConcatenatedItself: (NSString *)stringToConcatenateWith nTimes: (int)n;

-(void)fibonnaciNumberGenerator: (NSInteger)num1 secondNumber: (NSInteger)num2;

-(void)sumFirst10FibonnaciNumber: (NSInteger)num1 secondNumber: (NSInteger)num2;

-(void)sumFibonnaciTillTheNthTerm: (NSInteger)num1 secondNumber: (NSInteger)num2 nthTerm: (NSInteger)n;

-(void)shapeStructType:(char *)shape colorType: (char *)color;

-(void)guessIntGame: (NSInteger)num;

-(void)printAreaPerimeter: (NSInteger)height widthLength: (NSInteger)width;



@end
