//
//  ViewController.h
//  FadingObjects
//
//  Created by Arthur on 2015-10-14.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *Segment;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)FadeinButton:(id)sender;
- (IBAction)FadeoutButton:(id)sender;

@end

