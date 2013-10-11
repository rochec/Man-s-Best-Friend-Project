//
//  CRPuppy.m
//  Man's Best Friend
//
//  Created by Chris Roche on 10/9/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import "CRPuppy.h"

@implementation CRPuppy



-(void)givePuppyEyes
{
    NSLog(@":(");
}



-(void)bark
{
    [super bark];
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}


@end
