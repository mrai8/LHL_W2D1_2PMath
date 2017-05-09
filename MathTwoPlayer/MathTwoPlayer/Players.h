//
//  Players.h
//  MathTwoPlayer
//
//  Created by Mandeep on 2017-05-08.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Players : NSObject
@property (nonatomic) NSString *playerName;
@property (nonatomic) NSInteger playerLives;
@property (nonatomic) NSInteger playerScore;

-(instancetype)initWithName:(NSString *)playerName;

-(void)loseLife;

-(void)gainPoint;

-(NSString *)currentScore;



@end
