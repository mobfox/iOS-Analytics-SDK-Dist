//
// MFDMPManager.h
//  MobFoxSDKCore
//
//
//  Created by Moshe on 11/8/17.
//  Copyright © 2017 Moshe. All rights reserved.
//

#ifndef MFDmpManagerSingletonClass_h
#define MFDmpManagerSingletonClass_h

#ifndef NO_DMP  //#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#

#import <UIKit/UIKit.h>
#import <foundation/Foundation.h>

/* removed for now - ShSh
@protocol MFDmpDelegate <NSObject>

@optional

- (void)MobFoxDMPReady;

@end
*/

@interface MFDmpManager : NSObject {

}

/* removed for now - ShSh
@property (nonatomic, weak) id <MFDmpDelegate> delegate;
*/

+ (id)sharedManager;
+ (void)setDMPReportDisabled:(BOOL)enabled;
+ (BOOL)isDMPReportDisabled;

/* removed for now - ShSh
-(NSString *) getDMPMessage;
*/

@end

#endif //#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@#@

#endif /* MFDmpManagerSingletonClass_h */
