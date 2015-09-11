//
//  FCLocalizableInterfaceElement.h
//  FCLocalizableInterfaceElementDemo
//
//  Created by Almer Lucke on 9/11/15.
//  Copyright (c) 2015 Farcoding. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface UIView (FCLocalizableInterfaceElement)

@property (nonatomic, strong) IBInspectable NSString *localizableInterfaceElementKey;

- (void)setLocalizedInterfaceElementString:(NSString *)interfaceElementString;

@end
