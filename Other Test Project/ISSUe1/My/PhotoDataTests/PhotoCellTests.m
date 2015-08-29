//
//  PhotoCellTests.m
//  PhotoData
//
//  Created by Wilson-Yuan on 15/8/29.
//  Copyright (c) 2015年 objc.io. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoDataTestCase.h"
#import "PhotoCell.h"

@interface PhotoCellTests : PhotoDataTestCase

@end

@implementation PhotoCellTests

- (void)testNibLoading
{
    UINib *nib = [PhotoCell nib];
    
    XCTAssertNotNil(nib, @"");
    
    NSArray *a = [nib instantiateWithOwner:nib options:nil];
    
    XCTAssertEqual([a count], (NSInteger)1, @"");
    
    PhotoCell *cell = a[0];
    
    XCTAssertTrue([cell isMemberOfClass:[PhotoCell class]], @"");
    
    //检查outlet是否正确配置
    
    XCTAssertNotNil(cell.photoDateLabel, @"");
    XCTAssertNotNil(cell.photoTitleLabel, @"");
    
}


@end
