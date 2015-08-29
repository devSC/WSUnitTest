//
//  EventDescrpitionFormatter.m
//  Objc-issue15
//
//  Created by Wilson-Yuan on 15/8/29.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import <XCTest/XCTest.h>
//#import <Kiwi.h>
#import "Specs.h"
SpecBegin(EventDescrpitionFormatterSpec)
describe(@"EventDescrpitionFormatterSpec", ^{
    
    context(@"When created", ^{
        __block id mockDateFormatter = nil;
        __block NSString *eventDescription = nil;
        __block id mockEvent;
        
        //Mock 生成一个新的对象,返回一个人为设定的值
        beforeEach(^{
            mockDateFormatter = mock([NSDateFormatter class]);
            
        });
        
        
    });
    
});

SpecEnd

