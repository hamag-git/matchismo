//
//  CardGameViewController.m
//  matchismo
//
//  Created by Kai Pervölz on 28.02.14.
//  Copyright (c) 2014 kpervoelz. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCnt;
@property (nonatomic, strong) PlayingCardDeck *deck;

@end

@implementation CardGameViewController


- (Deck *)deck
{
    if (!_deck) _deck = [self createDeck];
    return _deck;
}


- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}


- (void) setFlipCnt:(int) flipCnt {
    _flipCnt = flipCnt;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCnt];
    NSLog(@"FlipCount changed to %d", self.flipCnt);
}


- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCnt++;
    }else{
        Card *randomCard = [self.deck drawRandomCard];
        if(randomCard) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            NSString *newTitle = [randomCard content];
            NSLog(@"Title: %@", newTitle);
            [sender setTitle:newTitle forState:UIControlStateNormal];
            self.flipCnt++;
        }
    }
    
    
}


@end
