//
//  ViewController.m
//  TextProperties
//
//  Created by Arthur on 2015-10-12.
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

- (IBAction)SetColour:(id)sender {
    self.Lable.textColor=[UIColor redColor];
}

- (IBAction)SetSizeFont:(id)sender {
    [ self.Lable setFont:[UIFont fontWithName:@"Verdana" size:25]];
}
- (IBAction)SetShadow:(id)sender {
    self.Lable.layer.shadowColor=[[UIColor blackColor] CGColor];
    self.Lable.layer.shadowOpacity=0.5;
    self.Lable.layer.shadowRadius=1.0f;
    self.Lable.layer.shadowOffset=CGSizeMake(0, 2);
}

- (IBAction)AlignLeft:(id)sender {
    self.Lable.textAlignment=NSTextAlignmentLeft;
}

- (IBAction)AlignRight:(id)sender {
    self.Lable.textAlignment=NSTextAlignmentRight;
}

- (IBAction)AlignCenter:(id)sender {
    self.Lable.textAlignment=NSTextAlignmentCenter;
}
@end
