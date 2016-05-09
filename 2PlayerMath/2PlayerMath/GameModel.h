//
//  GameModel.h
//  2PlayerMath
//
//  Created by Krzysztof Kopytek on 2016-05-09.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (strong,nonatomic) Player *player1;
@property (strong,nonatomic) Player *player2;
@property (strong,nonatomic) NSString *currentPlayer;

@property int x;
@property int y;

-(NSString*) showScores;

-(NSString*) showQuestion;

-(void)clickEnter:(int)currentValue;

@end
