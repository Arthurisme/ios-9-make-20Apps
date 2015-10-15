//
//  ViewController.m
//  RandomPlist
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

- (IBAction)ShowPlistButton:(id)sender {
    
    NSString *fileContents = [[NSBundle mainBundle] pathForResource: @"List" ofType: @"plist"];
    NSDictionary *wordDIC = [[NSDictionary alloc] initWithContentsOfFile:fileContents];
    
    NSMutableArray *items =[wordDIC valueForKey:@"List"];
    
    int RandomNumber = arc4random() % 5;
    NSString *word =[items objectAtIndex:RandomNumber];
    [self.Label setText:[[NSString alloc]initWithFormat:@"%@", word]];


}
@end
