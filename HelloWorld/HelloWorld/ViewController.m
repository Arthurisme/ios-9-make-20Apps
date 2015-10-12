//
//  ViewController.m
//  HelloWorld
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

- (IBAction)HelloButton:(id)sender {
    self.Label.text=@"Hello World!";
    
    
}
@end
