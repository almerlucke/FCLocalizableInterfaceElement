//
//  LocalizableLabel.m
//  FCLocalizableInterfaceElementDemo
//
//  Created by Almer Lucke on 9/11/15.
//  Copyright (c) 2015 Farcoding. All rights reserved.
//


#import "UILabel+FCLocalizableInterfaceElement.h"
#import "UIView+FCLocalizableInterfaceElement.h"


@implementation UILabel (FCLocalizableInterfaceElement)

- (void)setLocalizedInterfaceElementString:(NSString *)interfaceElementString
{
    self.text = interfaceElementString;
}

@end
