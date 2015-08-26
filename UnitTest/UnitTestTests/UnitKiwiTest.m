//
//  UnitKiwiTest.m
//  UnitTest
//
//  Created by YSC on 15/8/26.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "WSUnitModel.h"


SPEC_BEGIN(UnitKiwiTestSpec)

describe(@"This is a test", ^{
    context(@"when a test start", ^{
        NSString *greeting = @"hello word";
        it(@"should exist", ^{
            [[greeting shouldNot] beNil];
        });
        
        it(@"should equal to 'hello word'", ^{
            [[greeting should] equal:@"hello word"];
        });
    });
});

SPEC_END

