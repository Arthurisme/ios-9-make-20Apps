//
//  ViewController.m
//  ReactionGame
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
    scoreInt=0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)StartStop:(id)sender {
    
    if (scoreInt==0) {
     
    countInt=3;
    self.getreadyLabel.text=[NSString stringWithFormat:@"%i",countInt];
    timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCount) userInfo:nil repeats:YES ];
        
        [sender setTitle:@"Stop" forState: UIControlStateNormal];
        
    }
    else{
        [timeScore invalidate];
        [sender setTitle:@"reStart" forState: UIControlStateNormal];


    }
    if (countInt==0) {
        scoreInt=0;

        
    }
    
}

-(void) startCount{
    
    countInt-=1;
    self.getreadyLabel.text=[NSString stringWithFormat:@"%i",countInt];

    if (countInt==0) {
        [timer invalidate];
        scoreInt=0;
        self.timerLabel.text=[NSString stringWithFormat:@"%i",scoreInt];

            timeScore=[NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(scoreCount) userInfo:nil repeats:YES ];
        
    }
    
    
}

-(void)scoreCount{
    
    scoreInt+=1;
    self.timerLabel.text=[NSString stringWithFormat:@"%i",scoreInt];

    
}
@end
