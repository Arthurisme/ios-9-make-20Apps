//
//  ViewController.h
//  ActionOutlets
//
//  Created by Arthur on 2015-10-11.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)ActionButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *Label;

- (IBAction)ManualButton:(id)sender;

@end

