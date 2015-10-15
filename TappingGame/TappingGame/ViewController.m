//
//  ViewController.m
//  TappingGame
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
    
    timeInt=10;
    tapInt=0;
    
    self.TapButtonOutlet.enabled=NO;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)StartButton:(id)sender {
    
    if (timeInt==10) {
        
        self.TapButtonOutlet.enabled=YES;
        

        timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(StartCount) userInfo:nil repeats:YES];
    }
    
    
}

-(void)StartCount{
    
    timeInt-=1;
    
   
    
    if (timeInt==0) {
        self.TapButtonOutlet.enabled=NO;
        [timer invalidate];
        timeInt=10;

    }
    
    self.TimeLabel.text=[NSString stringWithFormat:@"%i",timeInt];
    
    
    
}

- (IBAction)TapButton:(id)sender {
    tapInt+=1;
    self.TapLabel.text=[NSString stringWithFormat:@"%i",tapInt];

}
@end
