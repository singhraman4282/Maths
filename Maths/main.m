//
//  main.m
//  Maths
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameon = YES;
        ScoreKeeper *newScore = [ScoreKeeper new];
        
        //maths2
        
        QuestionManager *newQuesMan = [QuestionManager new];
        QuestionFactory *newFactory = [QuestionFactory new];
        
        
        
        //maths2
        
        
        while(gameon) {
            
            
            Question *question1 = [newFactory generateRandomQuestion];
//            Question *question1 = [Question new];
        //maths2
            [newQuesMan.questions addObject:question1];
//            [[newQuesMan.questions objectAtIndex:0] answerTime];
//            NSLog(@"Total Questions is %lu", (unsigned long)newQuesMan.questions.count);
            
        //maths2
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
                newScore.right += 1;
                float abc = [newScore percentageThing];
                NSLog(@"Score: %d right, %d wrong ---- %f percent accuracy rate", [newScore right], [newScore wrong], abc);
            } else {
                NSLog(@"Wrong! The correct answer is %ld", (long)[question1 answer]);
                newScore.wrong += 1;
                float abc = [newScore percentageThing];
                NSLog(@"Score: %d right, %d wrong ---- %f percent accuracy rate", [newScore right], [newScore wrong], abc);
            }
            
            //maths2
            

            [question1 answerTime];
            [newQuesMan timeOutput];
            
            
            
            //maths2
            
            
            
            
        }//while loop
        
        
    }//autoReleasepool
    return 0;
}
