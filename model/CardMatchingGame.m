//
//  CardMatchingGame.m
//  matchismo
//
//  Created by Kai Pervoelz on 14.03.14.
//  Copyright (c) 2014 kpervoelz. All rights reserved.
//

#import "CardMatchingGame.h"


@interface CardMatchingGame()
@property (nonatomic, readwrite)NSInteger score;
@property (nonatomic,strong) NSMutableArray * cards;

@end


@implementation CardMatchingGame

- (NSMutableArray *)cards{
    if(!_cards) _cards =[[NSMutableArray alloc] init];
    return _cards;
}

- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck{
    if(!self){
        
        
        
    }
    return self;
}

- (instancetype)init{
    return nil;
}

@end
