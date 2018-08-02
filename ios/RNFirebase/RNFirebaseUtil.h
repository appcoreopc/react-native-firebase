#ifndef RNFirebaseUtil_h
#define RNFirebaseUtil_h

#import <Foundation/Foundation.h>
#import <React/RCTEventEmitter.h>
#import <Firebase.h>

static NSString *const DEFAULT_APP_DISPLAY_NAME = @"[DEFAULT]";
static NSString *const DEFAULT_APP_NAME = @"__FIRAPP_DEFAULT";

@interface RNFirebaseUtil : NSObject

+ (FIRApp *)getApp:(NSString *)appDisplayName;
+ (NSString *)getAppName:(NSString *)appDisplayName;
+ (NSString *)getAppDisplayName:(NSString *)appName;
+ (void)sendJSEvent:(RCTEventEmitter *)emitter name:(NSString *)name body:(id)body;
+ (void)sendJSEventWithAppName:(RCTEventEmitter *)emitter app:(FIRApp *)app name:(NSString *)name body:(id)body;

@end

#endif
