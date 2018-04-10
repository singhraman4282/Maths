//
//  InputHandler.m
//  Maths
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "InputHandler.h"
#import "AdditionQuestions.h"

@implementation InputHandler


-(NSString *)answerString {
    char inputChar[255];
                fgets(inputChar, 255, stdin);
                NSString *answer1 = [NSString stringWithUTF8String:inputChar];
                answer1 = [answer1 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    _answer = answer1;
    return answer1;
}


@end
