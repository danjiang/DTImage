## Introduction

Simple image processing.

## Installation

### Requirement

iOS 8+

### [CocoaPods](http://cocoapods.org)

To install DTImage add a dependency to your Podfile:

```
pod "DTImage"
```

### [Carthage](https://github.com/Carthage/Carthage)

To install DTImage add a dependency to your Cartfile:

```
github "danjiang/DTImage"
```

```
carthage update --platform ios
```

## Usage

### Import

```swift
import DTImage
```

### Use

```swift
let image = UIImage()
let control = UIView()

// resize
image.dt_resize(to: CGSize(width: 200, height: 150))

// crop
image.dt_crop(to: CGRect(x: 150, y: 100, width: 100, height: 100))

// snapshot
UIImage.dt_snapshot(view: control)
```

