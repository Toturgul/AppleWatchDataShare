//
//  MainRowType.h
//  LOTWatchShareData
//
//  Created by Levan Toturgul on 12/15/14.
//  Copyright (c) 2014 Levan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>
@interface MainRowType : NSObject
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *rowLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *rowMessage;


@end
