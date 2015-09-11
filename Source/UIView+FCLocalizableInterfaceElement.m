//
//  FCLocalizableInterfaceElement.m
//  FCLocalizableInterfaceElementDemo
//
//  Created by Almer Lucke on 9/11/15.
//  Copyright (c) 2015 Farcoding. All rights reserved.
//


#import "UIView+FCLocalizableInterfaceElement.h"
#import <objc/runtime.h>


const void *kFCLocalizableInterfaceElementAssocKey = @"FCLocalizableInterfaceElementAssocKey";


@implementation UIView (FCLocalizableInterfaceElement)


#pragma mark - LocalizableInterfaceElementKey

- (void)setLocalizableInterfaceElementKey:(NSString *)localizableInterfaceElementKey
{
    if (!localizableInterfaceElementKey) {
        return;
    }
    
    NSString *localizedString = NSLocalizedString(localizableInterfaceElementKey, nil);
    
    if (!localizedString) {
        return;
    }
    
    objc_setAssociatedObject(self,
                             kFCLocalizableInterfaceElementAssocKey,
                             localizableInterfaceElementKey,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self setLocalizedInterfaceElementString:localizedString];
}

- (NSString *)localizableInterfaceElementKey
{
    return objc_getAssociatedObject(self,
                                    kFCLocalizableInterfaceElementAssocKey);
}


#pragma mark - Localized String

- (void)setLocalizedInterfaceElementString:(NSString *)interfaceElementString
{
    // STUB: default does nothing, to be overridden by subclasses
}

@end
