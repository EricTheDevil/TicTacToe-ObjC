//
//  TicTacToeDelegate.h
//  TicTacToe
//
//  Created by eric ng on 24.3.2022.
//
#import "Piece.h"

#ifndef TicTacToeDelegate_h
#define TicTacToeDelegate_h

@protocol TicTacToeDelegate <NSObject>

- (Piece *)pieceAtCol:(int)col row:(int)row;

@end

#endif /* TicTacToeDelegate_h */
