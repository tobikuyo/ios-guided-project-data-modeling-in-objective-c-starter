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

@property (nonatomic) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
