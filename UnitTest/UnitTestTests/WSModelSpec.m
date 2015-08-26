//
//  WSModelSpec.m
//  UnitTest
//
//  Created by Wilson-Yuan on 15/8/26.
//  Copyright © 2015年 wilson-yuan. All rights reserved.
//

//#import <Kiwi.h>
#import "Kiwi.h"
#import "WSUnitModel.h"

SPEC_BEGIN(WSModelSpec)

describe(@"WSUnitModel", ^{
   
    context(@"when created", ^{
        __block WSUnitModel *model = nil;
        
        beforeEach(^{
            model = [WSUnitModel new];
        });
        
        afterEach(^{
            model = nil;
        });
        
        it(@"should have the unit model class", ^{
            [[[WSUnitModel class] shouldNot] beNil];
        });
        
        it(@"should exit", ^{
            [[model shouldNot] beNil];
        });
        
        it(@"should be able to add and get value", ^{
            [model add:1];
            [[theValue([model total]) should] equal:theValue(1)];

            
            [model add:10];
            [[theValue([model total]) should] equal:theValue(11)];
            
        });
        
        
        it(@"should equal contain 0 element", ^{
            [[theValue([model count]) should] beZero];
        });
        
    });
    
    
    
    context(@"when created", ^{
       
        __block WSUnitModel *model = nil;
        beforeEach(^{
            model = [WSUnitModel new];
            
            [model add:0];
        });
        
        afterEach(^{
            model = nil;
        });
        
        it(@"can be add and the total equal 5", ^{
            [[theValue([model total]) should] equal:theValue(5)];
        });
        
        it(@"should equal 0 after remove all value", ^{
           
            [model setZero];
            [[theValue([model total]) should] equal:theValue(0)];
        });
        
        it(@"should raise a exception when no value added", ^{
            [[theBlock(^{
                [model setZero];
            }) should] raiseWithName:@"WSUnitModelEmptyException"];
        });
        
        
    });
});





SPEC_END