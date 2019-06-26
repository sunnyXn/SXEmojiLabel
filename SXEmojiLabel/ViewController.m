//
//  ViewController.m
//  SXEmojiLabel
//
//  Created by Sunny on 2019/6/26.
//  Copyright © 2019 Sunny. All rights reserved.
//

#import "ViewController.h"
#import "SXEmojiLabel.h"

@interface ViewController ()

@property (nonatomic , strong) UILabel * titleLabel;

@property (nonatomic , strong) SXEmojiLabel * emojiLabel;

@end

@implementation ViewController

- (UILabel *)titleLabel
{
    if (!_titleLabel)
    {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.frame = CGRectMake(100, 200, 200, 50);
        _titleLabel.numberOfLines = 2;
        _titleLabel.font = [UIFont systemFontOfSize:15];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.backgroundColor = [UIColor lightGrayColor];
        [self.view addSubview:_titleLabel];
    }
    return _titleLabel;
}

- (SXEmojiLabel *)emojiLabel
{
    if (!_emojiLabel)
    {
        _emojiLabel = [[SXEmojiLabel alloc] initWithFrame:CGRectMake(100, 280, 200 , 50)];
        _emojiLabel.font = [UIFont systemFontOfSize:15];
        _emojiLabel.numberOfLines = 2;
        _emojiLabel.lineSpacing = 6;
//        _emojiLabel.verticalAlignment = TTTAttributedLabelVerticalAlignmentTop;
        _emojiLabel.textColor = [UIColor blackColor];
        
        _emojiLabel.customEmojiRegex = @"\\[([^\\[\\]]+)\\]";
        _emojiLabel.backgroundColor = [UIColor lightGrayColor];
        [self.view addSubview:_emojiLabel];
    }
    return _emojiLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * strText = @"哈哈[10]这[12]是[ok]一行[笑]表情[开心]啊[开心]，该怎么办呢[苦恼][观察][高兴][喷水][汗]啦啦啦";
    self.titleLabel.text = strText;
    self.emojiLabel.text = strText;
}


@end
