//
//  CSPropertyManager+Slider.h
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (Slider)

/*
 slider.value = value
 */
- (CSPropertyManager*(^)(float value))pValue;

/*
 slider.minimumValue = minimumValue
 */
- (CSPropertyManager*(^)(float minimumValue))pMinimumValue;

/*
 slider.maximumValue = maximumValue
 */
- (CSPropertyManager*(^)(float maximumValue))pMaximumValue;

/*
 slider.minimumValueImage = minimumValueImage
 */
- (CSPropertyManager*(^)(UIImage *minimumValueImage))pMinimumValueImage;

/*
 slider.maximumValueImage = maximumValueImage
 */
- (CSPropertyManager*(^)(UIImage *maximumValueImage))pMaximumValueImage;

/*
 slider.continuous = continuous
 */
- (CSPropertyManager*(^)(BOOL continuous))pContinuous;

/*
 slider.minimumTrackTintColor = minimumTrackTintColor
 */
- (CSPropertyManager*(^)(UIColor *minimumTrackTintColor))pMinimumTrackTintColor;

/*
 slider.maximumTrackTintColor = maximumTrackTintColor
 */
- (CSPropertyManager*(^)(UIColor *maximumTrackTintColor))pMaximumTrackTintColor;

/*
 slider.thumbTintColor = thumbTintColor
 */
- (CSPropertyManager*(^)(UIColor *thumbTintColor))pSliderThumbTintColor;

@end
