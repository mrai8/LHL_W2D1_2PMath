//
//  GameModel.m
//  MathTwoPlayer
//
//  Created by Mandeep on 2017-05-08.
//  Copyright © 2017 Mandeep. All rights reserved.
//


#import "GameModel.h"

@implementation GameModel



- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftSide=arc4random_uniform(20)+1 ;
        _rightSide=arc4random_uniform(20) + 1;
    
        switch (arc4random_uniform(3)) {
            case 0:
                _answer = _leftSide +_rightSide;
                _question = [NSString stringWithFormat:@"%lu + %lu",_leftSide,_rightSide];
                break;
            
            case 1:
                _answer = _leftSide -_rightSide;
                _question = [NSString stringWithFormat:@"%lu - %lu",_leftSide,_rightSide];
                break;
                
            case 2:
                _answer = _leftSide *_rightSide;
                _question = [NSString stringWithFormat:@"%lu x %lu",_leftSide,_rightSide];
                break;
                
                
                
            default:
                break;
        }
    
    }
    return self;
}


    


@end
