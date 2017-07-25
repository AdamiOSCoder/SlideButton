//
//  SlideButtonController.m
//  slideButton
//
//  Created by Adam的Apple on 17/7/18.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "SlideButtonController.h"

@interface SlideButtonController ()
//六个月
@property (weak, nonatomic) IBOutlet UIButton *junBtn;
//十二个月
@property (weak, nonatomic) IBOutlet UIButton *decBtn;
//十八个月
@property (weak, nonatomic) IBOutlet UIButton *eighteenBtn;
//二十四个月
@property (weak, nonatomic) IBOutlet UIButton *twentyFourBtn;

@property (weak, nonatomic) IBOutlet UIImageView *circleImage;

@property (weak, nonatomic) IBOutlet UIButton *dueTime;

@property (weak, nonatomic) IBOutlet UIButton *showBtn;


@end

@implementation SlideButtonController

{
    NSInteger  _monthTag;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.showBtn.layer.masksToBounds = YES;
    self.showBtn.layer.cornerRadius = 3;
}

- (IBAction)MonthBtnClick:(UIButton *)sender {
     NSInteger tag = sender.tag;
    
    switch (tag) {
        case 0:
            _monthTag = 0;
            [self.dueTime setTitle:@"6个月" forState:UIControlStateNormal] ;
            break;
        case 1:
            _monthTag = 1;
            [self.dueTime setTitle:@"12个月" forState:UIControlStateNormal];
            break;
        case 2:
            _monthTag = 2;
            [self.dueTime setTitle:@"18个月" forState:UIControlStateNormal];
            break;
        case 3:
            _monthTag = 3;
            [self.dueTime setTitle:@"24个月" forState:UIControlStateNormal];
            break;
    }
    
    
    [UIView animateWithDuration:1 animations:^{
        
        self.circleImage.center = sender.center;
        
    } completion:^(BOOL finished) {
        
    }];

}

@end
