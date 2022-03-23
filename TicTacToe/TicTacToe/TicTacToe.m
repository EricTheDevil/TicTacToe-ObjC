//
//  TicTacToe.m
//  TicTacToe
//
//  Created by eric ng on 23.3.2022.
//

#import "TicTacToe.h"

@implementation TicTacToe

NSMutableSet *piecesBox;

-(instancetype)init
{
    self = [super init];
        if(self)
        {
            piecesBox = [[NSMutableSet alloc] init];
        }
    return self;
}

- (Piece *)pieceAtCol:(int)col row:(int)row
{
    return 0;
}
@end
