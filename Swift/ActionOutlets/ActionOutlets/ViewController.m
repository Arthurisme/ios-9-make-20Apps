//
//  ViewController.m
//  ActionOutlets
//
//  Created by Arthur on 2015-10-11.
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

- (IBAction)ActionButton:(id)sender {
 _Label.text=@"I love you, Joseph and Emilie";
}
- (IBAction)ManualButton:(id)sender {
    //    _Label.text="I love you, Joseph and Emilie";
}
@end
