//
//  InputHandler.m
//  MathTwoPlayer
//
//  Created by Mandeep on 2017-05-08.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSInteger) getSubmission:(NSString *)inputString{
    NSInteger inputInt =[inputString integerValue];
    return inputInt;
}


@end
