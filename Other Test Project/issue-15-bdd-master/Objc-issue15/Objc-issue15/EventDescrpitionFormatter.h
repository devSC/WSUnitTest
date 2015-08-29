//
//  EventDescrpitionFormatter.h
//  Objc-issue15
//
//  Created by Wilson-Yuan on 15/8/29.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Event.h"


@interface EventDescrpitionFormatter : NSObject

@property (nonatomic, strong) NSDateFormatter *dateFormatter;

- (NSString *)eventDescriptionFromEvent:(id <Event>)event;



@end
