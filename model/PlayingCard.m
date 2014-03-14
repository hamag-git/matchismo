//
//  PlayingCard.m
//  matchismo
//
//  Created by Kai Pervölz on 06.03.14.
//  Copyright (c) 2014 kpervoelz. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)content{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; // because we provide getter AND setter

- (void)setSuit:(NSString *)suit{
    if([[PlayingCard validSuits] containsObject:suit] ){
        _suit = suit;
    }
}

- (NSString *)suit{
    return _suit ? _suit : @"?";
}

- (void) setRank:(NSUInteger)rank{
    if(rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}

+(NSArray *) validSuits{
    return @[@"♡",@"♢",@"♤",@"♧"];
}

+(NSUInteger) maxRank{
    return [[self rankStrings] count]-1;
}

+ (NSArray *) rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

@end
