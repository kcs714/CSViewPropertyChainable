//
//  CSPropertyManager+DatePicker.m
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+DatePicker.h"

@implementation CSPropertyManager (DatePicker)

- (CSPropertyManager*(^)(UIDatePickerMode datePickerMode))pDatePickerMode {
    return ^CSPropertyManager *(UIDatePickerMode datePickerMode){
        ((UIDatePicker *)self.innerView).datePickerMode = datePickerMode;
        return self;
    };
}

- (CSPropertyManager*(^)(NSLocale *locale))pLocale {
    return ^CSPropertyManager *(NSLocale *locale){
        ((UIDatePicker *)self.innerView).locale = locale;
        return self;
    };
}

- (CSPropertyManager*(^)(NSCalendar *calendar))pCalendar {
    return ^CSPropertyManager *(NSCalendar *calendar){
        ((UIDatePicker *)self.innerView).calendar = calendar;
        return self;
    };
}

- (CSPropertyManager*(^)(NSTimeZone *timeZone))pTimeZone {
    return ^CSPropertyManager *(NSTimeZone *timeZone){
        ((UIDatePicker *)self.innerView).timeZone = timeZone;
        return self;
    };
}

- (CSPropertyManager*(^)(NSDate *date))pDate {
    return ^CSPropertyManager *(NSDate *date){
        ((UIDatePicker *)self.innerView).date = date;
        return self;
    };
}

- (CSPropertyManager*(^)(NSDate *minimumDate))pMinimumDate {
    return ^CSPropertyManager *(NSDate *minimumDate){
        ((UIDatePicker *)self.innerView).minimumDate = minimumDate;
        return self;
    };
}

- (CSPropertyManager*(^)(NSDate *maximumDate))pMaximumDate {
    return ^CSPropertyManager *(NSDate *maximumDate){
        ((UIDatePicker *)self.innerView).maximumDate = maximumDate;
        return self;
    };
}

- (CSPropertyManager*(^)(NSTimeInterval countDownDuration))pCountDownDuration {
    return ^CSPropertyManager *(NSTimeInterval countDownDuration){
        ((UIDatePicker *)self.innerView).countDownDuration = countDownDuration;
        return self;
    };
}

- (CSPropertyManager*(^)(NSInteger minuteInterval))pMinuteInterval {
    return ^CSPropertyManager *(NSInteger minuteInterval){
        ((UIDatePicker *)self.innerView).minuteInterval = minuteInterval;
        return self;
    };
}

@end
