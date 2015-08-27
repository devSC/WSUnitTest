//
//  WSPerson.m
//  UnitTest
//
//  Created by YSC on 15/8/27.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import "WSPerson.h"

@implementation WSPerson
{
    NSString *_name;
    NSString *_sex;
}


- (void)setName: (NSString *)name
{
    _name = name;
}

- (NSString *)name
{
    return _name;
}

- (NSString *)sex
{
    return _sex;
}
@end
