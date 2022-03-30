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
int player1 = 0;
int player2 = 0;

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

    if((piece.col == 0) && (piece.row == 1))
    {
        NSLog(@"finger tip:(%d, %d)", col, row);
    }
    piece.col = col;
    piece.row = row;
    piece.isX = isX;
    piece.points = 5;
    // 3x3 Magicsquare condition win when the sum of a line is 15
    if((piece.col == 2) && (piece.row == 0)){
        piece.points = 6;

    } if((piece.col == 2) && (piece.row == 1)){
        piece.points = 7;

    }
    if((piece.col == 2) && (piece.row == 2)){
        piece.points = 2;
    }
    if(col == 0){
        if(piece.isX)
            player1 += piece.points;
    }
    if(col == 1){
        if(piece.isX)
            player1 += piece.points;
    }
    if(col == 2){
        if(piece.isX)
            player1 += piece.points;
    }
    
    NSLog(@"val:(%d, %d)", col, row);
    [piecesBox addObject:piece];
    NSLog(@"val:(%d)", player1);

    isX = !isX;
}

@end
