//
//  ViewController.m
//  CocoaPodsTest
//
//  Created by 仲雯 on 2020/8/12.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "PicTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"最近项目";
    
    
    _tableView = [[UITableView alloc] init];
    [self.view addSubview:_tableView];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[PicTableViewCell class] forCellReuseIdentifier:@"111"];
    
    
    
//    UIView *view01 = [[UIView alloc] init];
//    view01.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:view01];
//
//    [view01 mas_makeConstraints:^(MASConstraintMaker *make) {
////        make.center.equalTo(self.view);
////       make.size.mas_equalTo(CGSizeMake(60, 60));
//        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(20, 20, 20, 20));
//    }];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PicTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
    NSString *onePicStr = [NSString stringWithFormat:@"person%ld-1.JPG", indexPath.row];
    cell.picImageView01.image = [UIImage imageNamed:onePicStr];
    NSString *twoPicStr = [NSString stringWithFormat:@"person%ld-2.JPG", indexPath.row];
    cell.picImageView02.image = [UIImage imageNamed:twoPicStr];
    NSString *threePicStr = [NSString stringWithFormat:@"person%ld-3.JPG", indexPath.row];
    cell.picImageView03.image = [UIImage imageNamed:threePicStr];
    return cell;
}
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 141;
}
//- (void) first {
//    UIView *view01 = [[UIView alloc] init];
//    view01.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:view01];
//
//    [view01 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self.view);
//        make.size.mas_equalTo(CGSizeMake(60, 60));
//    }];
//}


@end
