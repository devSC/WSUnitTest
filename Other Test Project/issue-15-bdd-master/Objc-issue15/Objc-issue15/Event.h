//
//  Event.h
//  Objc-issue15
//
//  Created by Wilson-Yuan on 15/8/29.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Event <NSObject>

@property(nonatomic, readonly) NSString *name;

@property(nonatomic, readonly) NSDate *startDate;
@property(nonatomic, readonly) NSDate *endDate;



@end
