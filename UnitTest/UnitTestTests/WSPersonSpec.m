//
//  WSPersonSpec.m
//  UnitTest
//
//  Created by YSC on 15/8/27.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import <Kiwi.h>
#import "WSPerson.h"

SPEC_BEGIN(WSPersonSpec)

describe(@"WSPersonSpec", ^{
   
    context(@"when person created", ^{
       
        __block WSPerson *person = nil;
        beforeEach(^{
            person = [WSPerson new];
            
            
            //stub 就是返回一个事先定好的值
            [person stub:@selector(name) andReturn:@"Tome"];
            
            [person stub:@selector(sex) andReturn:@"female"];

        });
        
        afterEach(^{
            person = nil;
        });
        
        
        it(@"name should be tome", ^{
            [[[person name] should] equal:@"Tome"];
        });
        
        it(@"sex should be female", ^{
            [[[person sex] should] equal:@"female"];
        });
        
    });
    
});


SPEC_END