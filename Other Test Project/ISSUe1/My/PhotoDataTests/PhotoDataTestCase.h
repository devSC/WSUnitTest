//
//  PhotoDataTestCase.h
//  PhotoData
//
//  Created by YSC on 15/8/28.
//  Copyright (c) 2015年 objc.io. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import <XCTest/XCTest.h>
#import <OCMock.h>
#import <UIKit/UIKit.h>

@interface PhotoDataTestCase :XCTestCase

- (void)setUp; NS_REQUIRES_SUPER;

- (void)tearDown; NS_REQUIRES_SUPER;

///Retures the url for a resource thast's been added to the test target
- (NSURL *)URLForResource: (NSString *)name withExtension:(NSString *)extension;


- (id)autoVerifiedMockForClass: (Class)aClass;

- (id)autoVerifiedPartialMockForObjec: (id)object;

- (void)verifyDuringTearDown: (id)mock;


@end
