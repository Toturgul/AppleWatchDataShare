//
//  InterfaceController.h
//  LOTWatchShareData WatchKit Extension
//
//  Created by Levan Toturgul on 12/15/14.
//  Copyright (c) 2014 Levan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *myLabel;
@property (strong, nonatomic) NSArray *usernameArray;
@property (strong, nonatomic) NSArray *messageArray;
@property (strong, nonatomic) NSMutableArray *messagesFromApp;

@end
