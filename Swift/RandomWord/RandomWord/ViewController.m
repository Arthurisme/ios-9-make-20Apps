//
//  ViewController.m
//  RandomWord
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

- (IBAction)RandomWordButton:(id)sender {
    
    int RandomNumber = arc4random() % 5;
    
    switch (RandomNumber) {
        case 0:
            self.Label.text=@"red";
            break;
        case 1:
            self.Label.text=@"pink";
            break;
        case 2:
            self.Label.text=@"blue";
            break;
        case 3:
            self.Label.text=@"green";
            break;
        case 4:
            self.Label.text=@"silver";
            break;
            
        default:
            break;
    }
}
@end
