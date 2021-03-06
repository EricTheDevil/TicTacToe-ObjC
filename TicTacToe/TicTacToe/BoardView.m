//
//  BoardView.m
//  TicTacToe
//
//  Created by eric ng on 21.3.2022.
//

#import "BoardView.h"

@implementation BoardView

CGFloat squareSide = 100;
CGFloat ratio = 0.6;


- (void)drawRect:(CGRect)rect {
    // set size of grid
    NSLog(@"width = %f", rect.size.width);
    squareSide = self.bounds.size.width / 3;

    [self drawBoard];
    [self drawPieces];
    [self checkPieces];
}
// draw the pieces on the board
- (void)drawPieces{
    for (int row = 0; row < 3; row++) {
        for (int col = 0; col < 3 ; col++) {
            Piece *piece = [self.ticTacToeDelegate pieceAtCol:col row:row];
            if(piece != nil) {
                [self drawPieceAtCol:col row:row isX:piece.isX];
            }
        }
    }
}
- (void) checkPieces{
    int col=0;
    [self checkRow:col];
    col=1;
    [self checkRow:col];
    col=2;
    [self checkRow:col];

}
- (void) checkRow:(int)col{
    int counter1 = 0;
    int counter2 = 0;
    for (int row = 0; row < 3; row++) {
        Piece *piece = [self.ticTacToeDelegate pieceAtCol:col row:row];
        // calculate points
        if(piece != nil) {
                
                if(piece.isX)
                {
                    counter1 += piece.points;
                    NSLog(@"PIECES1 = %int %d", col, counter1);
                    if(counter1 == 15) {
                        NSLog(@"PLAYER 1 WINNER");

                    }
                }
                else{
                    counter2 += piece.points;
                    if( counter2 == 15 ) {
                        NSLog(@"PLAYER 2 WINNER");

                    }
                }
        }
    }
}
// draw the pieces on the right grid location
- (void)drawPieceAtCol:(int)col row:(int)row isX:(BOOL)isX {
    CGFloat radius = 0.5 * ratio * squareSide;
    CGFloat centerX = (0.5 + col) * squareSide;
    CGFloat centerY = (0.5 + (2 - row)) * squareSide;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    if (isX) {
        [path moveToPoint:CGPointMake(centerX - radius, centerY - radius)];
        [path addLineToPoint:CGPointMake(centerX + radius, centerY + radius)];
        [path moveToPoint:CGPointMake(centerX + radius, centerY - radius)];
        [path addLineToPoint:CGPointMake(centerX - radius, centerY + radius)];
        [[UIColor cyanColor] set];
    } else {
        [path addArcWithCenter:CGPointMake(centerX, centerY) radius:radius startAngle:0 endAngle:2 *M_PI clockwise:true];
        [[UIColor blueColor] set];
    }
    path.lineWidth = 5;
    [path stroke];
}

// draw the board with the parameters
- (void)drawBoard {
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    for (int i = 0; i < 2; i++) {
        [path moveToPoint:CGPointMake((i + 1) * squareSide, 0)];
        [path addLineToPoint:CGPointMake((i + 1) * squareSide, 3 * squareSide)];
        
        [path moveToPoint:CGPointMake(0, (i + 1) * squareSide)];
        [path addLineToPoint:CGPointMake(3 * squareSide, (i + 1) * squareSide)];
    }
    
    path.lineWidth = 5;
    [[UIColor brownColor] set];
    [path stroke];
}

@end
