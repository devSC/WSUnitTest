//
//  PhotoViewControllerTest.m
//  PhotoData
//
//  Created by Wilson-Yuan on 15/8/29.
//  Copyright (c) 2015年 objc.io. All rights reserved.
//

#import "PhotoDataTestCase.h"
#import "PhotosViewController.h"

#import "PhotoViewController.h"

@interface PhotoViewControllerTest : PhotoDataTestCase

@end

@implementation PhotoViewControllerTest

//测试点击 cell 后把我们带到详情页面，即一个 PhotoViewController 的实例被 push 到 navigation controller 里面。我们再次使用 mocking 来让测试尽可能不依赖于其他部分
- (void)testPhotoViewController
{
    //创建navigation的mock
    id mockNavController = [OCMockObject mockForClass:[UINavigationController class]];
    
    //使用mocking, 我们希望PhotosViewController实例的navigationController 返回mockNavController,
    //而我们不能直接设置navigationController,所以我们简单地使用stub来替换掉PhotosViewController实例的这个方法,让他返回mockNavController就可以了.
    PhotosViewController *photosViewController = [[PhotosViewController alloc] init];
    
    //触发view加载
    UIView *view = photosViewController.view;
    
    id photoViewControllerMock = [OCMockObject partialMockForObject:photosViewController];
    
    [[[photoViewControllerMock stub] andReturn:mockNavController] navigationController];
    //现在，任何时候对 photosViewController 调用 -navigationController 方法，都会返回 mockNavController。这是个强大的技巧，OCMock 就有这样的本领。
    
    UIViewController *viewController = [OCMArg checkWithBlock:^BOOL(id obj) {
        PhotoViewController *vc = obj;
        return ([vc isKindOfClass:[PhotoViewController class]] && (vc.photo != nil));
    }];
    
    [[mockNavController expect] pushViewController:viewController animated:YES];
    
    
    XCTAssertNotNil(view, @"");
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [photosViewController tableView:photosViewController.tableView didSelectRowAtIndexPath:indexPath];
    
    //最后验证mocks上期望的方法被掉用
    [mockNavController verify];
    [photoViewControllerMock verify];
    
    //或者使用下面方案
//    - (id)autoVerifiedMockForClass:(Class)aClass;
//    - (id)autoVerifiedPartialMockForObject:(id)object;
    
}
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
