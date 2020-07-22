//
//  ViewController.m
//  route
//
//  Created by Hank Bao on 7/21/20.
//  Copyright © 2020 zTap studio. All rights reserved.
//

#import "ViewController.h"

#import "RouteTableManager.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextView* textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reloadRouteTable:self];
}

- (IBAction)copyRouteTable:(id)sender {
    UIPasteboard.generalPasteboard.string = self.textView.text;
}

- (IBAction)reloadRouteTable:(id)sender {
    [RouteTableManager.sharedManager dumpRoutingTable:self.textView];
}

@end
