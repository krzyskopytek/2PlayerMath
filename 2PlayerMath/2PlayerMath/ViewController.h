//
//  ViewController.h
//  2PlayerMath
//
//  Created by Krzysztof Kopytek on 2016-05-09.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameModel.h"
#import "Player.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property int currentNumber;

@property (strong, nonatomic) NSMutableString *displayString;

@property (weak, nonatomic) IBOutlet UILabel *player1Label;
@property (weak, nonatomic) IBOutlet UILabel *player2Label;

@property (strong,nonatomic) GameModel *gameModel;

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

@end

