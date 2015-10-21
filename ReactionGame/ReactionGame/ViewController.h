//
//  ViewController.h
//  ReactionGame
//
//  Created by Arthur on 2015-10-13.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSTimer *timer;
    int countInt;
    
    NSTimer *timeScore;
    int scoreInt;
}
@property (weak, nonatomic) IBOutlet UILabel *getreadyLabel;

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
- (IBAction)StartStop:(id)sender;



@end

