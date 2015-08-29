//
//  ArrayDataSourceTest.m
//  PhotoData
//
//  Created by Wilson-Yuan on 15/8/29.
//  Copyright (c) 2015年 objc.io. All rights reserved.
//

#import "PhotoDataTestCase.h"
#import "ArrayDataSource.h"



@interface ArrayDataSourceTest : PhotoDataTestCase

@end

@implementation ArrayDataSourceTest
static NSString *const cellIdentifier = @"foo";

- (void)testInitializing
{
    XCTAssertNil([[ArrayDataSource alloc] init], @"Should not be allowed");
    
    TableViewCellConfigureBlock block = ^(UITableView *a, id b) {};
    id obj1 = [[ArrayDataSource alloc] initWithItems:@[]
                                      cellIdentifier:cellIdentifier
                                  configureCellBlock:block];
    
    XCTAssertNotNil(obj1, @"");
}

- (void)testCellConfiguration
{
    //配置
    __block UITableViewCell *configuredCell = nil;
    __block id configuredObject = nil;
    
    TableViewCellConfigureBlock block = ^(UITableViewCell *a, id b) {
        configuredCell = a;
        configuredObject = b;
    };
    
    ArrayDataSource *dataSource = [[ArrayDataSource alloc] initWithItems:@[@"a", @"b"]
                                                          cellIdentifier:cellIdentifier
                                                      configureCellBlock:block];
    
    //Mock tableview
    id mockTableView = [OCMockObject mockForClass:[UITableView class]];
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    
    ///expect 方法允许我们设置一个mock, 让他知道当这个方法调用时要做什么.
    //另外,-expect方法也告诉mock这个调用必须发生, 当我们稍后在mock上调用verify时,如果那个方法没有被调用则测试失败
    //相应的 -stub方法也用来设置mock对象,但它不关心方法是否被掉用
    [[[mockTableView expect] andReturn:cell] dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //调用我们希望测试的方法,来触发测试
    id result = [dataSource tableView:mockTableView cellForRowAtIndexPath:indexPath];
    
    //测试一切正常
    XCTAssertEqual(result, cell, @"should reture the dummy cell");
    XCTAssertEqual(configuredCell, cell, @"This should have been passed to the block");
    XCTAssertEqualObjects(configuredObject, @"a", @"this should have been passed to the block");
    
    [mockTableView verify];
    //这里, 前两个测试是通过指针来比较完成, 我们不使用-isEqual: 是因为实际测试的是result, cell 和 configuredCell,都是同一对象, 第三个要用-isEqual: ,最后我们调用mock的-verify方法
    
    ///这里也可以用下面方法来初始化mockTableView 它会自动调用verify
//    id mocktableView = [self autoVerifiedMockForClass:[UITableView class]];

    
    //我们想测试点击 cell 后把我们带到详情页面，即一个 PhotoViewController 的实例被 push 到 navigation controller 里面。我们再次使用 mocking 来让测试尽可能不依赖于其他部分
    id mockNavController = [OCMockObject mockForClass:[UINavigationController class]];
    

    
}



- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
