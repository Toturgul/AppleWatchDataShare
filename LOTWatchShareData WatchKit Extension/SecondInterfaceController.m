//
//  SecondInterfaceController.m
//  LOTWatchShareData
//
//  Created by Levan Toturgul on 12/16/14.
//  Copyright (c) 2014 Levan. All rights reserved.
//

#import "SecondInterfaceController.h"


@interface SecondInterfaceController()

@end


@implementation SecondInterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



