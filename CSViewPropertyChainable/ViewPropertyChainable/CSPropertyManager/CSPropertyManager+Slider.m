//
//  CSPropertyManager+Slider.m
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+Slider.h"

@implementation CSPropertyManager (Slider)

- (CSPropertyManager*(^)(float value))pValue {
    return ^CSPropertyManager *(float value){
        ((UISlider *)self.innerView).value = value;
        return self;
    };
}

- (CSPropertyManager*(^)(float minimumValue))pMinimumValue {
    return ^CSPropertyManager *(float minimumValue){
        ((UISlider *)self.innerView).minimumValue = minimumValue;
        return self;
    };
}

- (CSPropertyManager*(^)(float maximumValue))pMaximumValue {
    return ^CSPropertyManager *(float maximumValue){
        ((UISlider *)self.innerView).maximumValue = maximumValue;
        return self;
    };
}

- (CSPropertyManager*(^)(UIImage *minimumValueImage))pMinimumValueImage {
    return ^CSPropertyManager *(UIImage *minimumValueImage){
        ((UISlider *)self.innerView).minimumValueImage = minimumValueImage;
        return self;
    };
}

- (CSPropertyManager*(^)(UIImage *maximumValueImage))pMaximumValueImage {
    return ^CSPropertyManager *(UIImage *maximumValueImage){
        ((UISlider *)self.innerView).maximumValueImage = maximumValueImage;
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL continuous))pContinuous {
    return ^CSPropertyManager *(BOOL continuous){
        ((UISlider *)self.innerView).continuous = continuous;
        return self;
    };
}

- (CSPropertyManager*(^)(UIColor *minimumTrackTintColor))pMinimumTrackTintColor {
    return ^CSPropertyManager *(UIColor *minimumTrackTintColor){
        ((UISlider *)self.innerView).minimumTrackTintColor = minimumTrackTintColor;
        return self;
    };
}

- (CSPropertyManager*(^)(UIColor *maximumTrackTintColor))pMaximumTrackTintColor {
    return ^CSPropertyManager *(UIColor *maximumTrackTintColor){
        ((UISlider *)self.innerView).maximumTrackTintColor = maximumTrackTintColor;
        return self;
    };
}

- (CSPropertyManager*(^)(UIColor *thumbTintColor))pSliderThumbTintColor {
    return ^CSPropertyManager *(UIColor *thumbTintColor){
        ((UISlider *)self.innerView).thumbTintColor = thumbTintColor;
        return self;
    };
}

@end
