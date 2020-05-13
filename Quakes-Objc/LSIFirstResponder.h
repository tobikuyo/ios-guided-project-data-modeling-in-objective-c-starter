//
//  LSIFirstResponder.h
//  Quakes-Objc
//
//  Created by Tobi Kuyoro on 13/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIFirstResponder : NSObject

//NSMutableString (var) vs. NSString (let)
// copy - use with NSString, NSArray (mutable variant)
// mutableCopy -> NSString -> NSMutableString
// copy -> NSString -> NSString
// copy -> NSMutableString -> NSString

@property (nonatomic, copy) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
