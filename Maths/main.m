//
//  main.m
//  Maths
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestions.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameon = YES;
        while(gameon) {
            AdditionQuestions *question1 = [AdditionQuestions new];
            InputHandler*newInput = [InputHandler new];
            NSLog(@"%@", [question1 question]);
           
            
            NSString *answer1 = [newInput answerString];
            int userAnswered = [answer1 intValue];
            NSString *quit = @"quit";
            if ([answer1 isEqualToString:quit]) {
                NSLog(@"User pressed quit");
                gameon = false;
            }
            else if (userAnswered == [question1 answer]) {
                NSLog(@"Right");
            } else {
                NSLog(@"Wrong! The correct answer is %d", [question1 answer]);
            }
            
            
            
            
            
            
        }//while loop
        
        
    }//autoReleasepool
    return 0;
}
