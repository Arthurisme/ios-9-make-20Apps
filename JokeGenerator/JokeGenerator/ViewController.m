//
//  ViewController.m
//  JokeGenerator
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

- (IBAction)ShowJokeButton:(id)sender {
    
    NSString *fileContents =[[NSBundle mainBundle] pathForResource:@"JokeLists" ofType:@"plist"];
    NSDictionary *jokeDic = [[NSDictionary alloc]initWithContentsOfFile:fileContents];
    
    NSMutableArray *items = [jokeDic valueForKey:@"Jokes"];
    int RandomJoke = arc4random() % [items count];
    NSString *joke= [items objectAtIndex:RandomJoke];
    
    [self.Label setText:[[NSString alloc]initWithFormat:@"%@", joke]];

}
@end
