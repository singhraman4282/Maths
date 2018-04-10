//
//  AdditionQuestions.m
//  Maths
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "AdditionQuestions.h"

@implementation AdditionQuestions

- (instancetype)init
{
    self = [super init];
    if (self) {
        int num1 = arc4random_uniform(91) + 10;
        int num2 = arc4random_uniform(91) + 10;
        NSLog(@"%d + %d", num1, num2);
        _question = [NSString stringWithFormat:@"what is %d + %d", num1, num2];
        _answer = num1 + num2;
    
    }
    return self;
}

@end
