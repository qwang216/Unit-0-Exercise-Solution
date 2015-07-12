//
//  Week1.m
//  unit-0_Review_Excercise
//
//  Created by Jason Wang on 7/11/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import "Week1.h"

@implementation Week1

//********************************************************************************

                                //User Input

-(NSString *)userInputString {
    NSFileHandle *standardInput = [NSFileHandle fileHandleWithStandardInput];
    NSString *userString = [[[NSString alloc] initWithData:standardInput.availableData encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return userString;
}

-(NSInteger)userInputInterger {
    NSFileHandle *standardInput = [NSFileHandle fileHandleWithStandardInput];
    NSString *inputInteger = [[[NSString alloc] initWithData:standardInput.availableData encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSInteger userInteger = [inputInteger intValue];
    return userInteger;
}

//********************************************************************************

//Write a program that prints the numbers 1 through 10 using a loop.

-(void)forLoopPrint1to10 {
    for (int i = 1; i < 10; i++) {
        NSLog(@"%d\n", i);
    }
}

//********************************************************************************

//Write a program that prints the numbers 1 through 10 using a different kind of loop.

-(void)ifLoopPrint1to10 {
    
    int i = 1;
    if (i <=10) {
        NSLog(@"%d\n", i);
        i++;
        
    }
}

//********************************************************************************

//Write a program that takes in an int n and prints the numbers 1 through n.

-(void)printNumberTilln: (int)n {
    for (int i = 1; i <=n ; i++) {
        NSLog(@"%d\n", i);
    }
}

//********************************************************************************

//Write a program that takes in an int n and prints the even numbers 2 through n.

-(void)printEvenNumberTilln: (int)n {
    
    for (int i = 2; i < n; i = i+2) {
        NSLog(@"%d", i);
        
    }
}

//********************************************************************************

//Write a program that prints the sum of 1 through 10 using a loop.

-(void)printSumOf1to10 {
    int sum = 0;
    for (int i = 1; i <=10 ; i++) {
        sum += i;
    }
    NSLog(@"%d\n", sum);
}

//********************************************************************************

//Write a program that takes in an int n and prints the sum of the numbers 1 through n using a loop.

-(void)printSumOf1ToN: (int)n {
    int sum = 0;
    for (int i = 1; i <= n ; i++) {
        sum += i;
    }
    NSLog(@"%d\n", sum);
}

//********************************************************************************

//Use the program you wrote in the previous exercise to print the sum of the numbers from 1 through 10000.

-(void)printSumOf1to10000 {
    for (int i = 1; i < 10000; i++) {
        int sum = 0;
        for (int i = 1; i <= 10000 ; i++) {
            sum += i;
        }
        NSLog(@"%d", sum);
    }
}

//********************************************************************************

//Write a program that takes in an int n and a String s and prints out s on its own line, n times. If n is negative, print "" (that is print an empty sring).

-(void)printStringNtimes: (NSString *)s nTimes: (int)n {
    if (n < 0) {
        NSLog(@"");
    } else {
        for (int i = 0 ; i < n; i ++) {
            NSLog(@"%@\n", s);
        }
    }
}

//********************************************************************************

//Modify the method to print out the string concatenated with itself n times.

-(void)printStringConcatenatedItself: (NSString *)stringToConcatenateWith nTimes: (int)n {
    NSInteger concatenatedStringLength = [stringToConcatenateWith length] * n;
    NSString *contatenatedString = [@"" stringByPaddingToLength: concatenatedStringLength withString:stringToConcatenateWith startingAtIndex:0];
    NSLog(@"%@",contatenatedString);
}

//********************************************************************************

//Write a program that prints the first ten Fibonnaci numbers.

-(void)fibonnaciNumberGenerator: (NSInteger)num1 secondNumber: (NSInteger)num2 {
    
    
    NSNumber *n1 = [NSNumber numberWithInteger:num1];
    NSNumber *n2 = [NSNumber numberWithInteger:num2];
    
    
    NSMutableArray *fibonnaciArray = [[NSMutableArray alloc] init];
    [fibonnaciArray addObject: n1];
    [fibonnaciArray addObject: n2];
    for (int i = 2; i < 10; i++) {
        
        NSInteger previousNumber = [fibonnaciArray[i-1] integerValue];
        NSInteger twoPreviousNumber = [fibonnaciArray[i-2] integerValue];
        NSNumber *newNumber = [NSNumber numberWithInteger:previousNumber + twoPreviousNumber];
        
        [fibonnaciArray addObject:newNumber];
    }
    for (int i = 0; i < 10; i++) {
        NSLog(@"%@", fibonnaciArray[i]);
    }
    
}

//********************************************************************************

//Modify the program to sum the first ten Fibonnaci numbers.

-(void)sumFirst10FibonnaciNumber: (NSInteger)num1 secondNumber: (NSInteger)num2 {
    NSNumber *n1 = [NSNumber numberWithInteger:num1];
    NSNumber *n2 = [NSNumber numberWithInteger:num2];
    
    
    NSMutableArray *fibonnaciArray = [[NSMutableArray alloc] init];
    [fibonnaciArray addObject: n1];
    [fibonnaciArray addObject: n2];
    for (int i = 2; i < 10; i++) {
        
        NSInteger previousNumber = [fibonnaciArray[i-1] integerValue];
        NSInteger twoPreviousNumber = [fibonnaciArray[i-2] integerValue];
        NSNumber *newNumber = [NSNumber numberWithInteger:previousNumber + twoPreviousNumber];
        
        [fibonnaciArray addObject:newNumber];
    }
    NSInteger sumFibbonaciArray =0;
    for (int i = 0; i < 10; i++) {
        
        sumFibbonaciArray = sumFibbonaciArray + [fibonnaciArray[i] integerValue];
    }
    NSLog(@"%ld", (long)sumFibbonaciArray);
}

//********************************************************************************

//Modify the program to take in an int n and sum the first n Fibonnaci numbers.
-(void)sumFibonnaciTillTheNthTerm: (NSInteger)num1 secondNumber: (NSInteger)num2 nthTerm: (NSInteger)n {
    
    
    NSNumber *n1 = [NSNumber numberWithInteger:num1];
    NSNumber *n2 = [NSNumber numberWithInteger:num2];
    
    
    NSMutableArray *fibonnaciArray = [[NSMutableArray alloc] init];
    [fibonnaciArray addObject: n1];
    [fibonnaciArray addObject: n2];
    for (int i = 2; i < 10; i++) {
        
        NSInteger previousNumber = [fibonnaciArray[i-1] integerValue];
        NSInteger twoPreviousNumber = [fibonnaciArray[i-2] integerValue];
        NSNumber *newNumber = [NSNumber numberWithInteger:previousNumber + twoPreviousNumber];
        
        [fibonnaciArray addObject:newNumber];
    }
    NSInteger sumFibbonaciArray =0;
    for (int i = 0; i < n; i++) {
        
        sumFibbonaciArray = sumFibbonaciArray + [fibonnaciArray[i] integerValue];
    }
    NSLog(@"%ld", (long)sumFibbonaciArray);
}

//********************************************************************************

//Write a program that stores information about a shape in a struct called shape. The struct should hold information about the type of shape it is and it's color.

-(void)shapeStructType:(char *)shape colorType:(char *)color{
    struct thing{
        char * shapeType;
        char * colorType;
    };
    struct thing jason ;
    jason.colorType = color;
    jason.shapeType = shape;
    printf("%s, %s", jason.colorType, jason.shapeType);
}

//********************************************************************************

//Write a program that asks the user to type an integer and writes "YOU WIN" if the value is between 56 and 78 (both included). In the other case it writes "YOU LOSE".

-(void)guessIntGame: (NSInteger)num {
    if (56 <= num && num <= 78) {
        NSLog(@"YOU WIN");
    } else {
        NSLog(@"YOU LOSE");
    }
}

//********************************************************************************

//Write a program that asks the user to type the width and the height of a rectangle and then outputs to the screen the area and the perimeter of that rectangle.

-(void)printAreaPerimeter: (NSInteger)height widthLength: (NSInteger)width {
    
    NSInteger areaRectangle;
    NSInteger perimeterRectangle;
    
    areaRectangle = height * width;
    perimeterRectangle = (2*height) + (2* width);
    
    NSLog(@"Area: %ld   Perimeter: %ld", (long)areaRectangle, (long)perimeterRectangle);
}

//********************************************************************************

//Write a program which accepts five numbers from user input and then outputs how many numbers were read and the minium and maximum value of all the numbers.

-(void)maxMin:(NSInteger)num1 secondNum:(NSInteger)num2 thirdNum:(NSInteger)num3 fourthNum:(NSInteger)num4 fifthNum:(NSInteger)num5 {
    NSArray *numArray = @[@"num1",@"num2",@"num3",@"num4",@"num5"];
    numArray = [numArray ]
    
}


@end