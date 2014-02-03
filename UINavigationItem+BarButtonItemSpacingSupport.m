//
//  UINavigationItem+BarButtonItemSpacingSupport.m
//  Amudi Sebastian
//
//  Created by Amudi Sebastian on 3/2/14.
//

#import "UINavigationItem+BarButtonItemSpacingSupport.h"

@implementation UINavigationItem (BarButtonItemSpacingSupport)

- (void)addLeftBarButtonItem:(UIBarButtonItem *)leftBarButtonItem
{
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    negativeSpacer.width = -10;
    negativeSpacer.width -= NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1 ? 6 : 0;
    [self setLeftBarButtonItems:@[negativeSpacer, leftBarButtonItem]];
}

- (void)addRightBarButtonItem:(UIBarButtonItem *)rightBarButtonItem
{
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]
                                       initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                       target:nil action:nil];
    negativeSpacer.width = -10;
    negativeSpacer.width -= NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1 ? 6 : 0;
    [self setRightBarButtonItems:@[negativeSpacer, rightBarButtonItem]];
}

@end
