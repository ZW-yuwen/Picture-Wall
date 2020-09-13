//
//  PicTableViewCell.m
//  CocoaPodsTest
//
//  Created by 仲雯 on 2020/9/11.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "PicTableViewCell.h"
#import <Masonry.h>


@implementation PicTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _picImageView01 = [[UIImageView alloc] init];
    [self.contentView addSubview:_picImageView01];
    
    _picImageView02 = [[UIImageView alloc] init];
    [self.contentView addSubview:_picImageView02];
    
    _picImageView03 = [[UIImageView alloc] init];
    [self.contentView addSubview:_picImageView03];
    
    
    return self;
}

- (void)layoutSubviews {
    [_picImageView01 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.top.equalTo(@8);
        make.width.equalTo(self.contentView.mas_width).dividedBy(3.3);
        make.height.equalTo(self.contentView.mas_height).multipliedBy(0.9);
    }];
    
    [_picImageView02 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.picImageView01.mas_right).offset(7);
        make.top.equalTo(self.picImageView01);
        make.width.equalTo(self.picImageView01);
        make.height.equalTo(self.picImageView01);
    }];
    
    [_picImageView03 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.picImageView02.mas_right).offset(7);
        make.top.equalTo(self.picImageView01);
        make.width.equalTo(self.picImageView01);
        make.height.equalTo(self.picImageView01);
    }];
}

@end
