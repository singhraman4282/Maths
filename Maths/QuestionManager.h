//
//  QuestionManager.h
//  Maths
//
//  Created by Raman Singh on 2018-04-11.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject
@property (nonatomic, strong) NSMutableArray *questions;
@property (nonatomic) NSTimeInterval totalSeconds;

-(NSString *)timeOutput;
@end
