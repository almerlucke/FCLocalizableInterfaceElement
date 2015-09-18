# FCLocalizableInterfaceElement #

FCLocalizableInterfaceElement is a simple extension to UIView adding an IBInspectable NSString property called localizableInterfaceElementKey.

The setter for this property is overridden and a lookup with NSLocalizedString is done with the given key. If a localized string is found the setLocalizedInterfaceElementString method is called. Other classes can override this method to customize how the localized string is handled. The demo shows how you could add this to UILabel.

With this simple mechanic you are able to set a localized string to interface elements from interface builder files, i.e. storyboards and xibs.

There is also a genstrings version available [here](https://github.com/lickylick/FCGenstrings) which also finds these localized keys in interface files.