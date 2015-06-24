//
//  ViewController.m
//  FirstClass
//
//  Created by Mac User on 6/23/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

static CGFloat margin = 15;
static NSString * const Command = @"command";
static NSString * const Reference = @"reference";

- (NSArray *)gitCommands {
    return @[@{Command: @"git status", Reference: @": shows changed files"},
             @{Command: @"git diff", Reference: @": shows actual changes"},
             @{Command: @"git add .", Reference: @": adds changed files to the commit"},
             @{Command: @"git commit -m \"notes\"", Reference: @": commits the changes"},
             @{Command: @"git log", Reference: @": displays progress log"},
             @{Command: @"git comment --amend", Reference: @": re-enter last commit message"}
             ];
}

- (CGFloat)heightOfReferenceString:(NSString *)reference {
    CGRect bounding = [reference boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 2 * margin, 0)
                                              options:NSStringDrawingUsesLineFragmentOrigin
                                           attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]}
                                              context:nil];
    return bounding.size.height;
    
}

UIScrollView *scrollView = [UIScrollView new];
UIScrollView.frame = self.view.frame;
[self.view addSubview:scrollView];
scrollView alwaysBounceVertical = YES;

@end
