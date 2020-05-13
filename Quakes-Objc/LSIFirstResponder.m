//
//  LSIFirstResponder.m
//  Quakes-Objc
//
//  Created by Tobi Kuyoro on 13/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIFirstResponder.h"

@implementation LSIFirstResponder

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = [name copy]; // sets instance variable
    }

    return self;
}

- (void)setName:(NSString *)name {
    _name = [name copy]; // NSMutableString -> NSString
}

- (NSString *)description {
    return self.name;
}

@end
