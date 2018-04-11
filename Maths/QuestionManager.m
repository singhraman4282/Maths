//
//  QuestionManager.m
//  Maths
//
//  Created by Raman Singh on 2018-04-11.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
        
    }
    return self;
}

-(NSString *)timeOutput {
    NSTimeInterval times = [[_questions objectAtIndex:(_questions.count - 1)] answerTime];
    _totalSeconds += times;
    NSString *timeForThisQuestion = [NSString stringWithFormat:@"%f", times];
    NSTimeInterval averageTime = _totalSeconds/_questions.count;
//    NSLog(@"Question Manager Time %@",timeForThisQuestion);
    NSLog(@"Total Time: %f seconds, average time %f seconds", _totalSeconds,averageTime);
    return timeForThisQuestion;
}

@end
