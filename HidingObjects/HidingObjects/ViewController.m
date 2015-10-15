//
//  ViewController.m
//  HidingObjects
//
//  Created by Arthur on 2015-10-14.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)HideButton:(id)sender {
    
    self.Label.hidden=YES;
    self.SegmentControl.hidden=YES;

}

- (IBAction)RevealButton:(id)sender {
    self.Label.hidden=NO;
    self.SegmentControl.hidden=NO;

}
@end
