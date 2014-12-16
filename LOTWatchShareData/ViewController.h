//
//  ViewController.h
//  LOTWatchShareData
//
//  Created by Levan Toturgul on 12/15/14.
//  Copyright (c) 2014 Levan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *myTextView;

@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (strong, nonatomic) NSMutableArray *messages;

@end

