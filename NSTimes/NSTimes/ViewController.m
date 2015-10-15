//
//  ViewController.m
//  NSTimes
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

- (IBAction)startTimer:(id)sender {
    
    CountInt=0;
    self.Label.text=[NSString stringWithFormat:@"%i",CountInt];
    
    timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector (countTimer) userInfo:nil repeats:YES];
}

-(void)countTimer{
    CountInt += 1;
    self.Label.text=[NSString stringWithFormat:@"%i",CountInt];
    
}
- (IBAction)stopCount:(id)sender {
    [timer invalidate];
}
@end
