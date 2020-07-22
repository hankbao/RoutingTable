//
//  RouteTableManager.m
//  route
//
//  Created by Hank Bao on 7/21/20.
//  Copyright © 2020 zTap studio. All rights reserved.
//

#import "RouteTableManager.h"

#include "route.h"

@implementation RouteTableManager

+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    static RouteTableManager* instance;
    dispatch_once(&onceToken, ^{
        instance = [RouteTableManager new];
    });
    return instance;
}

- (void)dumpRoutingTable:(UITextView*)textView {
    self.cache = [[NSMutableString alloc] initWithCapacity:4096];
    ntreestuff();
    textView.text = self.cache;
}

@end

void PrintToTextView(const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);

    char buf[vsnprintf(NULL, 0, fmt, args) + 1];
    vsnprintf(buf, sizeof(buf), fmt, args);
    NSString* str = [[NSString alloc] initWithUTF8String:buf];
    va_end(args);

    [RouteTableManager.sharedManager.cache appendString:str];
}
