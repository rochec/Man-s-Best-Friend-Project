//
//  CRDog.m
//  Man's Best Friend
//
//  Created by Chris Roche on 10/5/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import "CRDog.h"

@implementation CRDog


-(void)bark
{
    NSLog(@"Woof Woof!");
}

-(void)barkANumberOfTimes:(int)numberOfTimes
{
    for (int bark = 1; bark <= numberOfTimes; bark++) {
        [self bark];
        
    }
    
}

-(void)changeBreedToWerewolf
{
    self.breed = @"werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud) {
        for (int bark = 1; bark <= numberOfTimes; bark++) {
            NSLog(@"yip yip");
        }
    }
    else {
        for (int bark = 1; bark <= numberOfTimes; bark++) {
            [self bark];
        }
    }
    
    
}


-(int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}




@end
