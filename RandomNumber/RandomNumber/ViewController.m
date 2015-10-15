//
//  ViewController.m
//  RandomNumber
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

- (IBAction)RandomNumber:(id)sender {
    
    double RandomNumber=arc4random() % 100;
    self.Label.text=[[NSString alloc] initWithFormat:@"%f" ,RandomNumber];
}
@end
