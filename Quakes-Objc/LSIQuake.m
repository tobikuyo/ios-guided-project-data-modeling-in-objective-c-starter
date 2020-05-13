//
//  LSIQuake.m
//  Quakes-Objc
//
//  Created by Tobi Kuyoro on 13/05/2020.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIQuake.h"

@implementation LSIQuake

- (instancetype)initWithMagnitude:(NSNumber *)magnitude
                            place:(NSString *)place
                             time:(NSDate *)time
                         latitude:(double)latitude
                        longitude:(double)longitude {
    if (self = [super init]) {
        _magnitude = magnitude;
        _place = [place copy];
        _time = time;
        _latitude = latitude;
        _longitude = longitude;
    }

    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    // extract data from dictionary using keys
    //    dictionary[@"PAUL"];
    //    [dictionary objectForKey:@"KEY"]; // returns a value or nil

    NSDictionary *properties = dictionary[@"properties"];
    NSDictionary *geometry = dictionary[@"geometry"];
    NSArray *coordinates = geometry[@"coordinates"];

    NSNumber *magnitude = properties[@"mag"];
    NSString *place = properties[@"place"];
    NSNumber *timeNumber = properties[@"time"];
    // Longitude is first in array
    NSNumber *longitude; // can crash if we access without checking size
    NSNumber *latitude;

    if (coordinates.count >= 2) {
        longitude = coordinates[0];
        latitude = coordinates[1];
    }

    if ([magnitude isKindOfClass:[NSNull class]]) {
        magnitude = nil;
    }

    // failable init (return nil -> failed to set it up)
    if (!place || !timeNumber || !longitude || !latitude) {
        return nil;
    }
    
    // NSTimeInterval = time in seconds
    double timeInMilliseconds = timeNumber.doubleValue;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInMilliseconds / 1000.0];
    return [self initWithMagnitude:magnitude place:place time:date latitude:latitude.doubleValue longitude:longitude.doubleValue];
}


@end
