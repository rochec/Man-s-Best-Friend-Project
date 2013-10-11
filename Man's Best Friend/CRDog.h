//
//  CRDog.h
//  Man's Best Friend
//
//  Created by Chris Roche on 10/5/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (nonatomic, strong) NSString *name;


-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;

-(int)ageInDogYearsFromAge:(int)regularAge;

@end
