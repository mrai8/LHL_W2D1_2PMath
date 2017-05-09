//
//  GameModel.h
//  MathTwoPlayer
//
//  Created by Mandeep on 2017-05-08.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Players.h"


@interface GameModel : NSObject
@property (nonatomic) NSInteger leftSide;
@property (nonatomic) NSInteger rightSide;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSString *question;

- (instancetype)init;





@end
