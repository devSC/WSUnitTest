//
//  WSUnitModel.m
//  UnitTest
//
//  Created by YSC on 15/8/26.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import "WSUnitModel.h"

@implementation WSUnitModel
{
    NSInteger _prValue;
    NSMutableArray *_numbers;

}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _prValue = 0;
        _numbers = [NSMutableArray array];
    }
    return self;
}
- (void)add:(NSInteger)value
{
    _prValue += value;
}

- (void)setZero
{
    if (_prValue == 0) {
        [NSException raise:@"WSUnitModelNotBeSeted" format:@"can't set a zero value to zero value"];
    }
    _prValue = 0;
}


- (NSInteger)total
{
    return _prValue;
}


- (NSInteger)count
{
    return _numbers.count;
}
@end
