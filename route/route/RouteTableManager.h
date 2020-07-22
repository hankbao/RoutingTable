//
//  RouteTableManager.h
//  route
//
//  Created by Hank Bao on 7/21/20.
//  Copyright © 2020 zTap studio. All rights reserved.
//

//http://www.masterraghu.com/subjects/np/introduction/unix_network_programming_v1.3/ch18lev1sec3.html

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class RouteRecord;

@interface RouteTableManager : NSObject

@property (nonatomic, strong) NSMutableString* cache;

+ (instancetype)sharedManager;

- (void)dumpRoutingTable:(UITextView*)textView;

@end
