//
//  ViewController.m
//  MathTwoPlayer
//
//  Created by Mandeep on 2017-05-08.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "ViewController.h"
#import "Players.h"
#import "GameModel.h"
#import "GameController.h"
#import "InputHandler.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstPlayerScore;
@property (weak, nonatomic) IBOutlet UILabel *secondPlayerScore;
@property (weak, nonatomic) IBOutlet UILabel *playerAndQ;
@property (weak, nonatomic) IBOutlet UILabel *playerInput;

@property (nonatomic)GameModel *gameModel;
@property (nonatomic)NSMutableArray<Players *> *playerSet;
@property (nonatomic)NSString *turn;


@end    

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gameModel=[GameModel new];
    Players *player1=[[Players alloc]initWithName:@"Bob"];
    Players *player2 = [[Players alloc]initWithName:@"Jane"];
    self.playerSet =[GameController playerOne:player1 andPlayerTwo:player2];
    self.playerAndQ.text=[NSString stringWithFormat:@"%@ press New Question",self.playerSet[0].playerName];
    self.firstPlayerScore.text=[NSString stringWithFormat:@"%@: %lu",self.playerSet[0].playerName, self.playerSet[0].playerScore];
    self.secondPlayerScore.text=[NSString stringWithFormat:@"%@: %lu",self.playerSet[1].playerName, self.playerSet[1].playerScore];
    self.turn =@"0";
    self.playerInput.text =@"";
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)newQuestion:(id)sender {
    
    self.gameModel=[GameModel new];

    if ([self.turn isEqualToString:@"0"]) {
        self.playerAndQ.text=[GameController player:self.playerSet[0] AndQuestion:self.gameModel];
        self.turn =@"1";
    }
    else if ([self.turn isEqualToString:@"1"]){
        self.playerAndQ.text=[GameController player:self.playerSet[1] AndQuestion:self.gameModel];
        self.turn =@"0";
    }
    self.playerInput.text =@"";

}

- (IBAction)number1:(id)sender {
    NSString *value = @"1";
    self.playerInput.text = [self.playerInput.text stringByAppendingString:value];
}

- (IBAction)number2:(id)sender {
    NSString *value = @"2";
    self.playerInput.text = [self.playerInput.text stringByAppendingString:value];
}

- (IBAction)number3:(id)sender {
    NSString *value = @"3";
    self.playerInput.text = [self.playerInput.text stringByAppendingString:value];
}


- (IBAction)number4:(id)sender {
    NSString *value = @"4";
    self.playerInput.text = [self.playerInput.text stringByAppendingString:value];
}

- (IBAction)number5:(id)sender {
    NSString *value = @"5";
    self.playerInput.text = [self.playerInput.text stringByAppendingString:value];
}

- (IBAction)number6:(id)sender {
    NSString *value = @"6";
    self.playerInput.text = [self.playerInput.text stringByAppendingString:value];
}

- (IBAction)number7:(id)sender {
    NSString *value = @"7";
    self.playerInput.text = [self.playerInput.text stringByAppendingString:value];
}

- (IBAction)number8:(id)sender {
    NSString *value = @"8";
    self.playerInput.text = [self.playerInput.text stringByAppendingString:value];
}


- (IBAction)number9:(id)sender {
    NSString *value = @"9";
    self.playerInput.text = [self.playerInput.text stringByAppendingString:value];
}
- (IBAction)number0:(id)sender {
    NSString *value = @"0";
    self.playerInput.text = [self.playerInput.text stringByAppendingString:value];
}



- (IBAction)submitAnswer:(id)sender {
    

    NSInteger submission= [InputHandler getSubmission:self.playerInput.text];
    
    if ([self.turn isEqualToString:@"1"]) {
        if (self.gameModel.answer == submission) {
            [self.playerSet[0] gainPoint];
            self.firstPlayerScore.text = [self.playerSet[0] currentScore];
        }
        else{
            
            [self.playerSet[0] loseLife];
            if (self.playerSet[0].playerLives < 1) {
                self.firstPlayerScore.text =[NSString stringWithFormat:@"%@: Loses",self.playerSet[0].playerName];
            }
        }
    }
    
    else if ([self.turn isEqualToString:@"0"]){
        if (self.gameModel.answer == submission) {
            [self.playerSet[1] gainPoint];
            self.secondPlayerScore.text = [self.playerSet[1] currentScore];
        }
        else{
            [self.playerSet[1] loseLife];
            if (self.playerSet[1].playerLives < 1) {
                self.secondPlayerScore.text =[NSString stringWithFormat:@"%@: Loses",self.playerSet[1].playerName];
            }
        }
    }
    self.playerInput.text =@"";
}
    
    










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
