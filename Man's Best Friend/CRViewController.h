//
//  CRViewController.h
//  Man's Best Friend
//
//  Created by Chris Roche on 10/5/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CRViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>

-(void)printHelloWorld;
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSArray *breedArray;
@end
