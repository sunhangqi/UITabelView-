//
//  HQStatus.m
//  UITabelView 非等高
//
//  Created by Macbook on 2017/4/30.
//  Copyright © 2017年 Macbook. All rights reserved.
//

#import "HQStatus.h"

@implementation HQStatus

+ (instancetype)statusWithDict:(NSDictionary *)dict {
    HQStatus *status = [[self alloc] init];
    [status setValuesForKeysWithDictionary:dict];
    return status;
}
@end
