//
//  Web_VC.h
//  hello
//
//  Created by xuyunhua on 2017/10/27.
//  Copyright © 2017年 xuyunhua. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ViewControllDelegate<NSObject>
-(void)transit:(NSString*) con;
@end
typedef void(^transit)(NSString* txt);
@interface Web_VC : UIViewController<ViewControllDelegate>
@property(nonatomic,strong)UITextView* tv;
@property(nonatomic,strong)UITextView* tv_2;
@property(nonatomic,strong)transit blc;
@property(nonatomic,readwrite)NSString* content;
@property(nonatomic,readwrite)NSString* tv_2_text;
@property(nonatomic,readwrite)id<ViewControllDelegate> delegate;
@end
