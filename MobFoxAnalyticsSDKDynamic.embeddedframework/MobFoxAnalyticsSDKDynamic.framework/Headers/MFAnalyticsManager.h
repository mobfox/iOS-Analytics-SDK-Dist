//
// MFAnalyticsManager.h
//  MobFoxSDKCore
//
//
//  Created by Moshe on 11/8/17.
//  Copyright © 2017 Moshe. All rights reserved.
//

#ifndef MFAnalyticsManagerSingletonClass_h
#define MFAnalyticsManagerSingletonClass_h

#ifndef NO_DMP  //#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#

#import <UIKit/UIKit.h>
#import <foundation/Foundation.h>

@interface MFAnalyticsManager : NSObject {

}

+ (id)sharedManager;
+ (void)setAnalyticsDisabled:(BOOL)enabled;
+ (BOOL)isAnalyticsDisabled;

/* removed for now - ShSh
-(NSString *) getDMPMessage;
*/

@end

#endif //#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@

#endif /* MFAnalyticsManagerSingletonClass_h */
