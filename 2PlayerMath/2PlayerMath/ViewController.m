//
//  ViewController.m
//  2PlayerMath
//
//  Created by Krzysztof Kopytek on 2016-05-09.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"
#import "Player.h"
#import "EndGameViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _gameModel = [[GameModel alloc]init];
    
    //show score :
    _player1Label.text = [_gameModel showScores];
    
    _displayString = [[NSMutableString alloc]init];
    
    _questionLabel.text = [_gameModel showQuestion];
    
    _currentNumber = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickDigit:(UIButton *)sender {
 
    int digit = (int)sender.tag;
    [self processDigit: digit];
    
}

-(void) processDigit: (int) digit {
    
    _currentNumber = _currentNumber*10 + digit;
    [_displayString appendString:[NSString stringWithFormat:@"%i",digit]];
    _inputTextField.text = _displayString;
    
}

- (IBAction)clickEnter:(UIButton *)sender {
    
    [_gameModel clickEnter:_currentNumber];
    _player1Label.text = [_gameModel showScores];
    _questionLabel.text = [_gameModel showQuestion];
    [_displayString setString:@""];
    _inputTextField.text = _displayString;
    _currentNumber = 0;
    
    
    //====test
    
    
}


@end
