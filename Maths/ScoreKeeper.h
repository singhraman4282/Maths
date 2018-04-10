//
//  ScoreKeeper.h
//  Maths
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (nonatomic) int right;
@property (nonatomic) int wrong;
@property (nonatomic) float percentage;

-(float)percentageThing;

@end
