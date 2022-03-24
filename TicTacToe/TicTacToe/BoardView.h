//
//  BoardView.h
//  TicTacToe
//
//  Created by eric ng on 21.3.2022.
//

#import <UIKit/UIKit.h>
#import "TicTacToeDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BoardView : UIView

@property (nonatomic, weak) id <TicTacToeDelegate> ticTacToeDelegate;

@end

NS_ASSUME_NONNULL_END
