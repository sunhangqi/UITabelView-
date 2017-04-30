//
//  HQStatus.h
//  UITabelView 非等高
//
//  Created by Macbook on 2017/4/30.
//  Copyright © 2017年 Macbook. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HQStatus : NSObject
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *picture;
@property (assign, nonatomic) BOOL vip;


+ (instancetype)statusWithDict:(NSDictionary *)dict;
@end
