//
//  DivQuestion.m
//  Maths
//
//  Created by Raman Singh on 2018-04-11.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "DivQuestion.h"

@implementation DivQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}


-(void)generateQuestion {
    super.answer = super.rightValue / super.leftValue;
    super.question = [NSString stringWithFormat:@"What is %ld / %ld", (long)super.rightValue, (long)super.leftValue];
}

@end
