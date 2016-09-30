//
//  ViewController.h
//  NSTimes
//
//  Created by Arthur on 2015-10-12.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
    int  CountInt;
}
- (IBAction)startTimer:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *Label;

- (IBAction)stopCount:(id)sender;



@end

