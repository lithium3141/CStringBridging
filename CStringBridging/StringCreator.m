//
//  StringCreator.m
//  CStringBridging
//
//  Created by Tim Ekl on 2017.12.07.
//  Copyright © 2017 Tim Ekl. All rights reserved.
//

#import "StringCreator.h"

@implementation StringCreator

const char *cString = "this is a string that I do not expect to be copied!!"; // 53 characters

+ (NSString *)doubleBridgedString;
{
    CFStringRef cfString = CFStringCreateWithCStringNoCopy(NULL, cString, kCFStringEncodingUTF8, NULL);
    NSString *nsString = (__bridge_transfer NSString *)cfString;
    return nsString;
}

@end
