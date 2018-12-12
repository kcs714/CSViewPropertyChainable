//
//  CSPropertyManager+Webview.m
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+Webview.h"

@implementation CSPropertyManager (Webview)

- (CSPropertyManager*(^)(id <UIWebViewDelegate> delegate))pWebviewDelegate {
    return ^CSPropertyManager *(id <UIWebViewDelegate> delegate){
        ((UIWebView *)self.innerView).delegate = delegate;
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL scalesPageToFit))pScalesPageToFit {
    return ^CSPropertyManager *(BOOL scalesPageToFit){
        ((UIWebView *)self.innerView).scalesPageToFit = scalesPageToFit;
        return self;
    };
}

- (CSPropertyManager*(^)(UIDataDetectorTypes dataDetectorTypes))pDataDetectorTypes {
    return ^CSPropertyManager *(UIDataDetectorTypes dataDetectorTypes){
        ((UIWebView *)self.innerView).dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL allowsInlineMediaPlayback))pAllowsInlineMediaPlayback {
    return ^CSPropertyManager *(BOOL allowsInlineMediaPlayback){
        ((UIWebView *)self.innerView).allowsInlineMediaPlayback = allowsInlineMediaPlayback;
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL mediaPlaybackRequiresUserAction))pMediaPlaybackRequiresUserAction {
    return ^CSPropertyManager *(BOOL mediaPlaybackRequiresUserAction){
        ((UIWebView *)self.innerView).mediaPlaybackRequiresUserAction = mediaPlaybackRequiresUserAction;
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL mediaPlaybackAllowsAirPlay))pMediaPlaybackAllowsAirPlay {
    return ^CSPropertyManager *(BOOL mediaPlaybackAllowsAirPlay){
        ((UIWebView *)self.innerView).mediaPlaybackAllowsAirPlay = mediaPlaybackAllowsAirPlay;
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL suppressesIncrementalRendering))pSuppressesIncrementalRendering {
    return ^CSPropertyManager *(BOOL suppressesIncrementalRendering){
        ((UIWebView *)self.innerView).suppressesIncrementalRendering = suppressesIncrementalRendering;
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL keyboardDisplayRequiresUserAction))pKeyboardDisplayRequiresUserAction {
    return ^CSPropertyManager *(BOOL keyboardDisplayRequiresUserAction){
        ((UIWebView *)self.innerView).keyboardDisplayRequiresUserAction = keyboardDisplayRequiresUserAction;
        return self;
    };
}

- (CSPropertyManager*(^)(UIWebPaginationMode paginationMode))pPaginationMode {
    return ^CSPropertyManager *(UIWebPaginationMode paginationMode){
        ((UIWebView *)self.innerView).paginationMode = paginationMode;
        return self;
    };
}

- (CSPropertyManager*(^)(UIWebPaginationBreakingMode paginationBreakingMode))pPaginationBreakingMode {
    return ^CSPropertyManager *(UIWebPaginationBreakingMode paginationBreakingMode){
        ((UIWebView *)self.innerView).paginationBreakingMode = paginationBreakingMode;
        return self;
    };
}

- (CSPropertyManager*(^)(CGFloat pageLength))pPageLength {
    return ^CSPropertyManager *(CGFloat pageLength){
        ((UIWebView *)self.innerView).pageLength = pageLength;
        return self;
    };
}

- (CSPropertyManager*(^)(CGFloat gapBetweenPages))pGapBetweenPages {
    return ^CSPropertyManager *(CGFloat gapBetweenPages){
        ((UIWebView *)self.innerView).gapBetweenPages = gapBetweenPages;
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL allowsPictureInPictureMediaPlayback))pAllowsPictureInPictureMediaPlayback {
    return ^CSPropertyManager *(BOOL allowsPictureInPictureMediaPlayback){
        if (@available(iOS 9.0, *)) {
            ((UIWebView *)self.innerView).allowsPictureInPictureMediaPlayback = allowsPictureInPictureMediaPlayback;
        }
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL allowsLinkPreview))pAllowsLinkPreview {
    return ^CSPropertyManager *(BOOL allowsLinkPreview){
        if (@available(iOS 9.0, *)) {
            ((UIWebView *)self.innerView).allowsLinkPreview = allowsLinkPreview;
        }
        return self;
    };
}

@end
