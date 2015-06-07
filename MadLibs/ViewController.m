//
//  ViewController.m
//  MadLibs
//
//  Created by Z on 6/7/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adj;
@property (weak, nonatomic) IBOutlet UITextField *animal;
@property (weak, nonatomic) IBOutlet UITextField *plNoun;
@property (weak, nonatomic) IBOutlet UITextField *ingVerb;
@property (weak, nonatomic) IBOutlet UITextField *bodyPart;
@property (weak, nonatomic) IBOutlet UITextField *organism;
@property (weak, nonatomic) IBOutlet UITextField *verb;
@property (weak, nonatomic) IBOutlet UILabel *storyLabel;


@end

@implementation ViewController
- (IBAction)playButton:(id)sender {
        NSArray *libs = @[self.adj.text,self.animal.text,self.plNoun.text,self.ingVerb.text,self.bodyPart.text,self.organism.text,self.verb.text];
  
    self.storyLabel.hidden = NO;
    
    self.storyLabel.text = [NSString stringWithFormat:@"The Northern %@ %@ (Myotis septentrionalis) was recently granted new %@ under the Endangered Species Act. It is one of several species %@ due to White %@ Syndrome, an invasive %@ which ravages %@ while they %@.", libs[0],libs[1],libs[2],libs[3],libs[4],libs[5], libs[1], libs[6]];
    
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
