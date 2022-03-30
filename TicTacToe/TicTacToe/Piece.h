//
//  Piece.h
//  TicTacToe
//
//  Created by eric ng on 23.3.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Piece : NSObject

@property int col;
@property int row;
@property bool isX;
@property int points;
@end

NS_ASSUME_NONNULL_END
