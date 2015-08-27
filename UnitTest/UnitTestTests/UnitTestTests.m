//
//  UnitTestTests.m
//  UnitTestTests
//
//  Created by YSC on 15/8/26.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "WSUnitModel.h"


@interface UnitTestTests : XCTestCase
{
    CGFloat f1;
    CGFloat f2;
}

@end

@implementation UnitTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    f1 = 2;
    f2 = 2;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
//    XCTAssert(YES, @"Pass");
    XCTAssertTrue(f1 + f2 == 4);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
