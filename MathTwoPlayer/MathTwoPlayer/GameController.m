//
//  GameController.m
//  MathTwoPlayer
//
//  Created by Mandeep on 2017-05-08.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "GameController.h"

@implementation GameController


+(NSString *)player:(Players *)player AndQuestion:(GameModel *)question{
    
    NSString * playerQuestion = [NSString stringWithFormat:@"%@: %@", player.playerName, question.question];
    
    return playerQuestion;
}


+(NSMutableArray *)playerOne:(Players *)player1 andPlayerTwo:(Players *)player2{
    
    NSMutableArray *playerSet = [NSMutableArray new];
    
    [playerSet addObject:player1];
    [playerSet addObject:player2];
    
    return playerSet;
}




@end
