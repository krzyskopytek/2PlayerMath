//
//  Player.m
//  2PlayerMath
//
//  Created by Krzysztof Kopytek on 2016-05-09.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName : (NSString*) name
{
    self = [super init];
    if (self) {
        _numberOfLives = 3;
        _score = 0;
        _name = name;
    }
    return self;
}


@end
