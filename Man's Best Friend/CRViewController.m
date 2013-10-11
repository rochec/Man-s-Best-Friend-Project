//
//  CRViewController.m
//  Man's Best Friend
//
//  Created by Chris Roche on 10/5/13.
//  Copyright (c) 2013 Chris Roche. All rights reserved.
//

#import "CRViewController.h"
#import "CRDog.h"
#import "CRPuppy.h"

@interface CRViewController ()

@end

@implementation CRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //prep the view for first launch and create myDog
    CRDog *myDog = [[CRDog alloc]init];
    myDog.name = @"Bob";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    
    //create other dogs
    CRDog *secondDog = [[CRDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    CRDog *thirdDog = [[CRDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    CRDog *fourthDog = [[CRDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    //add dogs to MutableArray
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    
    //create another dog from subclass
    CRPuppy *littlePuppy = [[CRPuppy alloc] init];
//    [littlePuppy givePuppyEyes];
//    [littlePuppy bark];
    
    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    // add to myDogs array
    [self.myDogs addObject:littlePuppy];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)printHelloWorld
//{
//    NSLog(@"Hello World");
//}


//set number of components in picketView
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

//set number of rows in pickerView
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    int numberOfDogs = [self.myDogs count];
    
    return numberOfDogs;
}

//set row title in pickerView
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //return [self.breedArray objectAtIndex:row];
    
    CRDog *selectedDog = [self.myDogs objectAtIndex:row];
    
    return selectedDog.name;
    
}


//update view based on selected item in pickerView
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //self.breedLabel.text = [self.breedArray objectAtIndex:row];
    
    CRDog *selectedDog = [self.myDogs objectAtIndex:row];
    
//    self.breedLabel.text = selectedDog.breed;
//    self.nameLabel.text = selectedDog.name;
//    self.myImageView.image = selectedDog.image;
    
    [UIView transitionWithView:self.view duration:1.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = selectedDog.image;
        self.breedLabel.text = selectedDog.breed;
        self.nameLabel.text = selectedDog.name;
    } completion:^(BOOL finished){}];
    

}

//- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
//{
//    UILabel *label = [[UILabel alloc] init];
//    label.text = @"Row";
//    label.textColor = [UIColor redColor];
//    return label;
//    
//    
//    
//}

@end
