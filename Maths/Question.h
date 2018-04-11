//
//  AdditionQuestions.h
//  Maths
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;


-(NSTimeInterval)answerTime;
-(void)generateQuestion;

@end
