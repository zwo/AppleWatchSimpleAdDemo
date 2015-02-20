//
//  WQWatchAdController.m
//  WatchDemo1
//
//  Created by Victor on 15-1-29.
//  Copyright (c) 2015年 Victor. All rights reserved.
//

#import "WQWatchAdController.h"


@interface WQWatchAdController()

@end


@implementation WQWatchAdController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)openAd {
    BOOL didOpenParent=[WKInterfaceController openParentApplication:@{@"Event":@"showAd"} reply:^(NSDictionary *replyInfo, NSError *error) {
        NSLog(@"Reply Info: %@", replyInfo);
    }];
    NSLog(@"Did open parent application? %i", didOpenParent);
}

- (IBAction)ignoreAd {
    [self dismissController];
}

@end



