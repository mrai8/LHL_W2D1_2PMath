//
//  Players.m
//  MathTwoPlayer
//
//  Created by Mandeep on 2017-05-08.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "Players.h"

@implementation Players

-(instancetype)initWithName:(NSString *)playerName{
    self = [super init];
    if (self) {
        _playerName = playerName;
        _playerLives = 3;
        _playerScore = 0;
}
    return self;
}

-(void)loseLife{
    self.playerLives --;
}

-(void)gainPoint{
    self.playerScore ++;
}

-(NSString *)currentScore{
    
    NSString *currentScore = [NSString stringWithFormat:@"%@: %lu", self.playerName, self.playerScore];
    
    return currentScore;
    
}

@end
