//
//  ViewController.h
//  EnablingObjects
//
//  Created by Arthur on 2015-10-14.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)EnableButton:(id)sender;
- (IBAction)DisableButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *Button;

@end

