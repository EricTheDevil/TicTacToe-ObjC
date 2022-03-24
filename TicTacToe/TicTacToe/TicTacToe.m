//
//  TicTacToe.m
//  TicTacToe
//
//  Created by eric ng on 23.3.2022.
//

#import "TicTacToe.h"

@implementation TicTacToe

NSMutableSet *piecesBox;
bool isX = true;

-(instancetype)init {
    self = [super init];
        if(self)
        {
            piecesBox = [[NSMutableSet alloc] init];
        }
    return self;
}

- (Piece *)pieceAtCol:(int)col row:(int)row {
    for (Piece *piece in piecesBox) {
        if(col == piece.col && row == piece.row) {
            if(col == 0)
            {
                if(row ==0){
                    NSLog(@"HELP:(%d, %d)", col, row);

                }
            }
            return piece;
        }
    }
    return nil;
}


- (void) dropPieceAtCol:(int)col row:(int)row {
    if([self pieceAtCol:col row:row] != nil) {
        return;
    }
    
    Piece *piece = [[Piece alloc]init];
    piece.col = col;
    piece.row = row;
    piece.isX = isX;
    [piecesBox addObject:piece];
    isX = !isX;
}

@end
