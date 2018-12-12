//
//  CSPropertyManager+TableView.m
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+TableView.h"

@implementation CSPropertyManager (TableView)

- (CSPropertyManager *(^)(CGFloat estHeight))pTabEstRowHeight {
    return ^CSPropertyManager *(CGFloat estHeight){
        ((UITableView *)self.innerView).estimatedRowHeight = estHeight;
        return self;
    };
}

- (CSPropertyManager *(^)(id <UITableViewDataSource> dataSource))pTabDataSource {
    return ^CSPropertyManager *(id <UITableViewDataSource> dataSource){
        ((UITableView *)self.innerView).dataSource = dataSource;
        return self;
    };
}

- (CSPropertyManager *(^)(id <UITableViewDelegate> delegate))pTabDelegate {
    return ^CSPropertyManager *(id <UITableViewDelegate> delegate){
        ((UITableView *)self.innerView).delegate = delegate;
        return self;
    };
}

@end
