//
//  QuestionFactory.h
//  Maths
//
//  Created by Raman Singh on 2018-04-11.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject
@property (nonatomic, strong) NSArray *questionSubclassNames;

-(Question *)generateRandomQuestion;
@end
