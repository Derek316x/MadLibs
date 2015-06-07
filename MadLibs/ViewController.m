//
//  ViewController.m
//  MadLibs
//
//  Created by Z on 6/7/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *noun1;
@property (weak, nonatomic) IBOutlet UITextField *verb1;
@property (weak, nonatomic) IBOutlet UITextField *verb2;
@property (weak, nonatomic) IBOutlet UILabel *storyLabel;

@end

@implementation ViewController
- (IBAction)playButton:(id)sender {
        NSArray *libs = @[self.noun1.text,self.verb1.text, self.verb2.text];
    
  
    self.storyLabel.hidden = NO;
    
    self.storyLabel.text = [NSString stringWithFormat:@"the %@ %@ the %@", libs[0],libs[1],libs[2]];
    NSLog(@"The %@ %@ the %@.", libs[0],libs[1],libs[2]);
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.storyLabel.hidden = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
