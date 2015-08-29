//
//  EventDescrpitionFormatter.m
//  Objc-issue15
//
//  Created by Wilson-Yuan on 15/8/29.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import "EventDescrpitionFormatter.h"

@implementation EventDescrpitionFormatter
- (id)init {
    self = [super init];
    if (self) {
        self.dateFormatter = [[NSDateFormatter alloc] init];
        self.dateFormatter.timeStyle = NSDateFormatterShortStyle;
        self.dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    }
    
    return self;
}

- (NSString *)eventDescriptionFromEvent:(id <Event>)event {
    return     [NSString stringWithFormat:@"%@ starts at %@ and ends at %@.", event.name,
                [self.dateFormatter stringFromDate:event.startDate],
                [self.dateFormatter stringFromDate:event.endDate]];
}


@end
