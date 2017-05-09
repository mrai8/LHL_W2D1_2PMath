//
//  GameController.h
//  MathTwoPlayer
//
//  Created by Mandeep on 2017-05-08.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Players.h"
#import "GameModel.h"
#import "InputHandler.h"


@interface GameController : NSObject

+(NSString *)player:(Players *)player AndQuestion:(GameModel *)question;

+(NSMutableArray *)playerOne:(Players *)player1 andPlayerTwo:(Players *)player2;




@end
