//
//  ViewController.m
//  TicTacToe
//
//  Created by eric ng on 21.3.2022.
//

#import "ViewController.h"

@interface ViewController ()

    @property (weak, nonatomic) IBOutlet BoardView *boardView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)dropPiece:(UITapGestureRecognizer *)sender {
    CGPoint fingerTip = [sender locationInView:self.boardView];
   
    CGFloat squareSide = self.boardView.bounds.size.width/3;
    int col = fingerTip.x / squareSide;
    int row = 2- (int)(fingerTip.y / squareSide);
    
    NSLog(@"finger tip:(%d, %d)", col, row);
}


@end
