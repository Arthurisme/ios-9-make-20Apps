//
//  ViewController.h
//  TimeandDate
//
//  Created by Arthur on 2015-10-12.
//  Copyright © 2015 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSTimer * timer;
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

