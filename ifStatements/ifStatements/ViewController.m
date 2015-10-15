//
//  ViewController.m
//  ifStatements
//
//  Created by Arthur on 2015-10-13.
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

- (IBAction)ifButton:(id)sender {
    if([self.textField.text isEqualToString:@"Hello"]){
        self.Label2.text=@"You are welcom!";
    }
    else
    {self.Label2.text=@"Go Away!";}
}

- (IBAction)KeyboardDismiss:(id)sender {
    
    self.textField.text=self.Label1.text;
    [self resignFirstResponder];
}
@end
