//
//  QuestionFactory.m
//  Maths
//
//  Created by Raman Singh on 2018-04-11.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = [NSArray new];
        _questionSubclassNames = @[@"AddQuestion", @"SubQuestion", @"MulQuestion", @"DivQuestion"];
        
        
    }
    return self;
}

-(Question *)generateRandomQuestion {
    int random = arc4random_uniform(4);
    NSString *randomResult = [_questionSubclassNames objectAtIndex:random];
    
    return [[NSClassFromString(randomResult) alloc]init];
}

@end
