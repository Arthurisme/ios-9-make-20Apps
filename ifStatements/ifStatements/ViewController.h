//
//  ViewController.h
//  ifStatements
//
//  Created by Arthur on 2015-10-13.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *Label1;
- (IBAction)ifButton:(id)sender;
- (IBAction)KeyboardDismiss:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *Label2;

@end

