//
//  SXEmojiLabel.h
//  SXEmojiLabel
//
//  Created by Sunny on 2019/6/26.
//  Copyright © 2019 Sunny. All rights reserved.
//

#import "TTTAttributedLabel.h"


/**
 可以解析显示表情的label， 支持自定义表情检索
 */
@interface SXEmojiLabel : TTTAttributedLabel


/**
 禁用表情
 */
@property (nonatomic, assign) BOOL disableEmoji;


/**
 自定义表情正则
 */
@property (nonatomic, strong) NSString *customEmojiRegex;

@end



