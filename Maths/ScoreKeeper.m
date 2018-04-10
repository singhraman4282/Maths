//
//  ScoreKeeper.m
//  Maths
//
//  Created by Raman Singh on 2018-04-10.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper


-(float)percentageThing {
    float pt = _right * 100/(_right + _wrong);
    _percentage = pt;
//    NSLog(@"%d", _right);
    
    return pt;
}

@end
