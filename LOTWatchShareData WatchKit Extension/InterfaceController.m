//
//  InterfaceController.m
//  LOTWatchShareData WatchKit Extension
//
//  Created by Levan Toturgul on 12/15/14.
//  Copyright (c) 2014 Levan. All rights reserved.
//

#import "InterfaceController.h"
#import "MainRowType.h"

@interface InterfaceController()
- (IBAction)myButton;
@property (weak, nonatomic) IBOutlet WKInterfaceTable *myTable;

@end


@implementation InterfaceController
@synthesize myLabel;

-(instancetype) initWithContext:(id)context{
    self = [super initWithContext:context];
    if (self) {
        NSLog(@"%@ initWithContext", self);

//        self.messagesFromApp = [[NSMutableArray alloc] init];
        [self configureTableWithData:self.messagesFromApp];
        
        
    }
    return self;
}





- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [self configureTableWithData:self.messagesFromApp];
    // Configure interface objects here.
    NSLog(@"%@ awakeWithContext", self);
    //[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(myButton) userInfo:nil repeats:YES];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}


- (void)configureTableWithData:(NSArray*)dataObjects {

    NSLog(@"configureTablewithData activated num of rows %ld",[dataObjects count]);
    
    [self.myTable setNumberOfRows:[dataObjects count] withRowType:@"firstRC"];
    for (NSInteger i = 0; i < self.myTable.numberOfRows; i++) {
        MainRowType* theRow = [self.myTable rowControllerAtIndex:i];
        NSString* dataObj = [dataObjects objectAtIndex:i];
        
        [theRow.rowMessage setText:dataObj];
    }
    
    
}










- (IBAction)myButton {
    
    

    self.messagesFromApp = [[NSMutableArray alloc] init]; 
    
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.vegasshare"];
    [mySharedDefaults synchronize];
    
    NSArray* messagesFromVegas = [mySharedDefaults stringArrayForKey:@"savedUserInput"];
    
        for (NSString *tempString in messagesFromVegas) {
        [self.messagesFromApp insertObject:tempString atIndex:0];
    }
    
    
    //I think this might refresh the page
    [self awakeWithContext:nil];

}




@end



