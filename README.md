# DTImage

[![Swift](https://img.shields.io/badge/Swift-3.0-ff3f26.svg?style=flat)](https://swift.org/)
[![Platform](https://img.shields.io/cocoapods/p/DTImage.svg?style=flat)](http://cocoadocs.org/docsets/DTImage)
[![CocoaPods](http://img.shields.io/cocoapods/v/DTImage.svg)](https://cocoapods.org/pods/DTImage)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Introduction

Simple image processing.

## Installation

### Requirement

iOS 8.4+

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

