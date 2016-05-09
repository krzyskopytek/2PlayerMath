//
//  Player.h
//  2PlayerMath
//
//  Created by Krzysztof Kopytek on 2016-05-09.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (strong,nonatomic) NSString *name;
@property int numberOfLives;
@property int score;

- (instancetype)initWithName : (NSString*) name;

@end
