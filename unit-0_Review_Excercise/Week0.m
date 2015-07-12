//
//  Week0.m
//  unit-0_Review_Excercise
//
//  Created by Jason Wang on 7/9/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import "Week0.h"

@implementation Week0

//********************************************************************************


//Write a program that initializes a variable, n, of type int with a number of your choice. If n is odd then your program should print the word "odd". If n is even then it should print the word "even".

-(void) testNumberOddEven: (int) n {
    if (n %2 == 0) {
        NSLog(@"even");
    } else {
        NSLog(@"odd");
    }
}

//********************************************************************************

//Write a program that assigns a number to an int, n. Your program should print "Multiple of 3", if the number is a multiple of three, otherwise it should print "Not a Multiple of 3".

-(void)multipleOfThree: (int) n {
    if (n %3 == 0) {
        NSLog(@"Multiple of 3");
    } else {
        NSLog(@"Not a Multiple of 3");
    }
}

//********************************************************************************

//Write a program that assigns a number to an int, n. Your program should print "Odd and Multiple of 3", if the number is odd and is also a multiple of three, otherwise it should print "Neither".

-(void)oddAndMultipleOfThree: (int)n {
    if ((n %3 == 0) && (n %2 != 0)) {
        NSLog(@"Odd and Multiple of 3");
    } else {
        NSLog(@"Neither");
    }
}

//********************************************************************************

//Write a program that assigns a value to two integer variables A and B and then exchange the value of A and B.

-(void)exchangeTwoValues: (int)a anotherValue: (int)b {
    int temp;
    NSLog(@"Value a: %d | Value b: %d", a, b);
    temp = a;
    a = b;
    b = temp;
    NSLog(@"After the Exchange.\nValue a: %d | Value b: %d", a, b);
}

//********************************************************************************

//Write a program that takes two numbers as and outputs the larger of the two numbers.

-(NSInteger *)outputLargerOfTwoNumbers:(NSInteger *)num1
                           secondValue:(NSInteger *)num2 {
    if (num1 > num2) {
        return num1;
    } else if (num1 < num2) {
        return num2;
    } else {
        NSLog(@"Both Values are Equal");
        return 0;
    }
}

//********************************************************************************

//Write a program which stores a student's number grade in a variable name score. You can assign score a value between 0 and 100. Your program should translate the number score into a letter grade and then output the letter grade to the console according to the following criteria:
    //- score = 100 -> "Perfect score!"
    //- score >= 90 -> "A"
    //- score >= 80 -> "B"
    //- score >= 70 -> "C"
    //- score >= 60 -> "D"
    //- anything else -> "F"

-(void)numberGradeConversion: (int)score {
    if (score == 100) {
        NSLog(@"Perfect Score!");
    } else if ( (score > (100)) && (score < 0) ){
        NSLog(@"Sorry. Only accept value between 0 - 100");
    } else if (score >= 90) {
        NSLog(@"Your Grade is: A");
    } else if (score >= 80) {
        NSLog(@"Your Grade is: B");
    } else if (score >= 70) {
        NSLog(@"Your Grade is: C");
    } else if (score >= 60) {
        NSLog(@"Your Grade is: D");
    } else if ((score < 60) && (score >=0)){
        NSLog(@"Your Grade is: F");
    }
}



@end
