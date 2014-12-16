//
//  ViewController.m
//  LOTWatchShareData
//
//  Created by Levan Toturgul on 12/15/14.
//  Copyright (c) 2014 Levan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)myButton:(id)sender;

@end

@implementation ViewController
@synthesize myTextView;
@synthesize myTextField;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.messages = [[NSMutableArray alloc] init];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)myButton:(id)sender {
    
    
    //NSString *myString = [myTextField text];
    
    [self.messages addObject:self.myTextField.text];
    
    
    
    
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.vegasshare"];
    [mySharedDefaults setObject:self.messages forKey:@"savedUserInput"];
    [mySharedDefaults synchronize];
    
    
}




@end
 