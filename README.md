# SMTagField

[![Version](https://img.shields.io/cocoapods/v/SMTagField.svg?style=flat)](http://cocoapods.org/pods/SMTagField)
[![License](https://img.shields.io/cocoapods/l/SMTagField.svg?style=flat)](http://cocoapods.org/pods/SMTagField)
[![Platform](https://img.shields.io/cocoapods/p/SMTagField.svg?style=flat)](http://cocoapods.org/pods/SMTagField)

**SMTagField** is an implementation of UITextField that allows for easy input/display of Tags

![SMTagField Screenshot](http://i40.tinypic.com/2crqd8j.jpg "SMTagField Screenshot")

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Just initialize **SMTagField**, set the delegate (Optional), add to your parent view, and you're good to go!
Check out the "SMTagFieldExample" Xcode project which shows a basic working example.

```objc
tagField                = [[SMTagField alloc] initWithFrame: CGRectMake(20, 20, 280, 0)]; // Height is always 30, you shouldn't modify it.
tagField.tagDelegate    = self;

[self.view addSubview: tagField];

// Set some tags to begin with, if you have any
tagField.tags = @[@"Tag1", @"Tag2", @"Tag3"];
```

## Requirements

## Installation

SMTagField is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SMTagField"
```

## License

SMTagField is available under the MIT license. See the LICENSE file for more info.
