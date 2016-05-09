//
//  GameModel.m
//  2PlayerMath
//
//  Created by Krzysztof Kopytek on 2016-05-09.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {

        _player1 = [[Player alloc] initWithName: @"Tom"];
        _player2 = [[Player alloc] initWithName: @"Jerry"];
        _currentPlayer = _player1.name;
        
    }
    return self;
}

// show scores
-(NSString*) showScores{
    
    NSString *string = _player1.name;
    string = [string stringByAppendingString:[NSString stringWithFormat:@"   %d   vs.   %d   ",_player1.score, _player2.score]];
    string = [string stringByAppendingString:_player2.name];
    return string;
    
}

// show question
-(NSString*) showQuestion{
    
    NSString *string;
    if([_currentPlayer isEqualToString:_player1.name])
        string = _player1.name;
    else string = _player2.name;
    
    self.x = (int)arc4random_uniform(10);
    self.y = (int)arc4random_uniform(10);
    
    string = [string stringByAppendingString:[NSString stringWithFormat:@" : %i + %i = ?",_x, _y]];
    
    return string;
    
}

-(void)clickEnter:(int)currentValue{
    
    if(currentValue == (_x +_y)) {
        if([_currentPlayer isEqualToString:_player1.name]) _player1.score += 1;
        else _player2.score += 1;
    }
    else {
        if([_currentPlayer isEqualToString:_player1.name]) {
            
            _player1.numberOfLives -= 1;
            if( _player1.numberOfLives == 0) ;//END GAME
        
        }
        else {
            
        _player2.numberOfLives -=1;
            if( _player2.numberOfLives == 0) ;//END GAME
        
        }
    
    }

    if([_currentPlayer isEqualToString:_player1.name]) _currentPlayer = _player2.name;
    else _currentPlayer = _player1.name;
    
}

@end
