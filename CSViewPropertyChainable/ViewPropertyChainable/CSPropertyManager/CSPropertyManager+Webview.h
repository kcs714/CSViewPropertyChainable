//
//  CSPropertyManager+Webview.h
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (Webview)

/*
 webview.delegate = delegate
 */
- (CSPropertyManager*(^)(id <UIWebViewDelegate> delegate))pWebviewDelegate;

/*
 webview.scalesPageToFit = scalesPageToFit
 */
- (CSPropertyManager*(^)(BOOL scalesPageToFit))pScalesPageToFit;

/*
 webview.dataDetectorTypes = dataDetectorTypes
 */
- (CSPropertyManager*(^)(UIDataDetectorTypes dataDetectorTypes))pDataDetectorTypes;

/*
 webview.allowsInlineMediaPlayback = allowsInlineMediaPlayback
 */
- (CSPropertyManager*(^)(BOOL allowsInlineMediaPlayback))pAllowsInlineMediaPlayback;

/*
 webview.mediaPlaybackRequiresUserAction = mediaPlaybackRequiresUserAction
 */
- (CSPropertyManager*(^)(BOOL mediaPlaybackRequiresUserAction))pMediaPlaybackRequiresUserAction;

/*
 webview.mediaPlaybackAllowsAirPlay = mediaPlaybackAllowsAirPlay
 */
- (CSPropertyManager*(^)(BOOL mediaPlaybackAllowsAirPlay))pMediaPlaybackAllowsAirPlay;

/*
 webview.suppressesIncrementalRendering = suppressesIncrementalRendering
 */
- (CSPropertyManager*(^)(BOOL suppressesIncrementalRendering))pSuppressesIncrementalRendering;

/*
 webview.keyboardDisplayRequiresUserAction = keyboardDisplayRequiresUserAction
 */
- (CSPropertyManager*(^)(BOOL keyboardDisplayRequiresUserAction))pKeyboardDisplayRequiresUserAction;

/*
 webview.paginationMode = paginationMode
 */
- (CSPropertyManager*(^)(UIWebPaginationMode paginationMode))pPaginationMode;

/*
 webview.paginationBreakingMode = paginationBreakingMode
 */
- (CSPropertyManager*(^)(UIWebPaginationBreakingMode paginationBreakingMode))pPaginationBreakingMode;

/*
 webview.pageLength = pageLength
 */
- (CSPropertyManager*(^)(CGFloat pageLength))pPageLength;

/*
 webview.gapBetweenPages = gapBetweenPages
 */
- (CSPropertyManager*(^)(CGFloat gapBetweenPages))pGapBetweenPages;

/*
 webview.allowsPictureInPictureMediaPlayback = allowsPictureInPictureMediaPlayback
 */
- (CSPropertyManager*(^)(BOOL allowsPictureInPictureMediaPlayback))pAllowsPictureInPictureMediaPlayback;

/*
 webview.allowsLinkPreview = allowsLinkPreview
 */
- (CSPropertyManager*(^)(BOOL allowsLinkPreview))pAllowsLinkPreview;

@end
