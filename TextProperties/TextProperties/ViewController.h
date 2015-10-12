//
//  ViewController.h
//  TextProperties
//
//  Created by Arthur on 2015-10-12.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *Lable;
- (IBAction)SetColour:(id)sender;
- (IBAction)SetSizeFont:(id)sender;
- (IBAction)SetShadow:(id)sender;
- (IBAction)AlignLeft:(id)sender;
- (IBAction)AlignRight:(id)sender;
- (IBAction)AlignCenter:(id)sender;



@end

