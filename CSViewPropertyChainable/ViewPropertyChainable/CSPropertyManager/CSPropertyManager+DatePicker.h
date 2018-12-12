//
//  CSPropertyManager+DatePicker.h
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (DatePicker)

/*
 datePicker.datePickerMode = datePickerMode
 */
- (CSPropertyManager*(^)(UIDatePickerMode datePickerMode))pDatePickerMode;

/*
 datePicker.locale = locale
 */
- (CSPropertyManager*(^)(NSLocale *locale))pLocale;

/*
 datePicker.calendar = calendar
 */
- (CSPropertyManager*(^)(NSCalendar *calendar))pCalendar;

/*
 datePicker.timeZone = timeZone
 */
- (CSPropertyManager*(^)(NSTimeZone *timeZone))pTimeZone;

/*
 datePicker.date = date
 */
- (CSPropertyManager*(^)(NSDate *date))pDate;

/*
 datePicker.minimumDate = minimumDate
 */
- (CSPropertyManager*(^)(NSDate *minimumDate))pMinimumDate;

/*
 datePicker.maximumDate = maximumDate
 */
- (CSPropertyManager*(^)(NSDate *maximumDate))pMaximumDate;

/*
 datePicker.countDownDuration = countDownDuration
 */
- (CSPropertyManager*(^)(NSTimeInterval countDownDuration))pCountDownDuration;

/*
 datePicker.minuteInterval = minuteInterval
 */
- (CSPropertyManager*(^)(NSInteger minuteInterval))pMinuteInterval;

@end
