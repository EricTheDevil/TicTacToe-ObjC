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

int row1 = 0;
int row2 = 0;
int row3 = 0;

int col1 = 0;
int col2 = 0;
int col3 = 0;

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
    piece.points = 0;
    
    // 3x3 Magicsquare condition win when the sum of a line is 15
    // col 2 BOTTOM TO TOP
    //  4   9   2
    //  3   5   7
    //  8   1   6
    
    if((piece.col == 2) && (piece.row == 0)){
        piece.points = 6;

    } if((piece.col == 2) && (piece.row == 1)){
        piece.points = 7;

    }
    if((piece.col == 2) && (piece.row == 2)){
        piece.points = 2;
    }
    
    // col 1
    if((piece.col == 1) && (piece.row == 0)){
        piece.points = 1;

    } if((piece.col == 1) && (piece.row == 1)){
        piece.points = 5;

    }
    if((piece.col == 1) && (piece.row == 2)){
        piece.points = 9;
    }
    
    // col 0
    if((piece.col == 0) && (piece.row == 0)){
        piece.points = 8;

    } if((piece.col == 0) && (piece.row == 1)){
        piece.points = 3;

    }
    if((piece.col == 0) && (piece.row == 2)){
        piece.points = 4;
    }
    
    /*
    // player points
    if(col == 0){
        if(piece.isX)
        {
            col1 += piece.points;
        }
    }
    if(col == 1){
        if(piece.isX)
            player1 += piece.points;
    }
    if(col == 2){
        if(piece.isX)
            player1 += piece.points;
    }
     */
    
    NSLog(@"val:(%d, %d)", col, row);
    [piecesBox addObject:piece];
    NSLog(@"val:(%d)", player1);

    isX = !isX;
}

@end
