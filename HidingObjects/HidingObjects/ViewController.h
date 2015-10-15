//
//  ViewController.h
//  HidingObjects
//
//  Created by Arthur on 2015-10-14.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)HideButton:(id)sender;
- (IBAction)RevealButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *Label;
@property (weak, nonatomic) IBOutlet UISegmentedControl *SegmentControl;


@end

