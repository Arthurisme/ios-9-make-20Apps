//
//  ViewController.h
//  TappingGame
//
//  Created by Arthur on 2015-10-14.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSTimer *timer;
    int timeInt;
    int tapInt;
}
- (IBAction)StartButton:(id)sender;
- (IBAction)TapButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *TimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *TapLabel;
@property (weak, nonatomic) IBOutlet UIButton *TapButtonOutlet;


@end

