//
//  AdditionQuestions.m
//  Maths
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightValue = arc4random_uniform(91) + 10;
        _leftValue = arc4random_uniform(91) + 10;

        _question = [NSString stringWithFormat:@"what is %ld + %ld", (long)_rightValue, (long)_leftValue];
        _answer = _rightValue + _leftValue;
        
        //maths2
        _startTime = [NSDate date];
//        NSLog(@"%@", _startTime);
    
    }
    return self;
}

-(NSInteger)answer {
    _endTime = [NSDate date];
//    NSLog(@"End time is %@", _endTime);
    return _answer;
}

-(NSTimeInterval)answerTime {
    NSTimeInterval time1 = [_startTime timeIntervalSinceReferenceDate];
    NSTimeInterval time2 = [_endTime timeIntervalSinceReferenceDate];
    NSTimeInterval timeItTook = time2 - time1;
//    NSLog(@"it took you %f seconds" , timeItTook);
    return timeItTook;
}

-(void)generateQuestion {
    
}

@end
