//
//  CSPropertyManager+TableView.h
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (TableView)

/*
 estimatedRowHeight
 */
- (CSPropertyManager *(^)(CGFloat estHeight))pTabEstRowHeight;

/*
 dataSource
 */
- (CSPropertyManager *(^)(id <UITableViewDataSource> dataSource))pTabDataSource;

/*
 delegate
 */
- (CSPropertyManager *(^)(id <UITableViewDelegate> delegate))pTabDelegate;

@end
