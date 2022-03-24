//
//  TicTacToe.h
//  TicTacToe
//
//  Created by eric ng on 23.3.2022.
//

#import <Foundation/Foundation.h>
#import "Piece.h"
NS_ASSUME_NONNULL_BEGIN

@interface TicTacToe : NSObject

- (Piece *)pieceAtCol:(int)col row:(int)row;
- (void)dropPieceAtCol:(int)col row:(int)row;
@end

NS_ASSUME_NONNULL_END
