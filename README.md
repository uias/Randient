<p align="center">
    <img src=".artwork/logo.png" width="890" alt="Tabman"/>
</p>

<p align="center">
    <a href="https://travis-ci.org/uias/Randient">
        <img src="https://travis-ci.org/uias/Randient.svg?branch=master" />
    </a>
    <img src="https://img.shields.io/badge/Swift-4.2-orange.svg?style=flat" />
    <a href="https://cocoapods.org/pods/Randient">
        <img src="https://img.shields.io/cocoapods/v/Randient.svg" alt="CocoaPods" />
    </a>
	<a href="https://cocoapods.org/pods/Randient">
        <img src="https://img.shields.io/cocoapods/p/Randient.svg" alt="Platforms" />
    </a>
	<a href="https://github.com/Carthage/Carthage">
        <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" />
    </a>
	<a href="https://github.com/uias/Randient/releases">
        <img src="https://img.shields.io/github/release/uias/Randient.svg" />
    </a>
</p>

**Randient** provides randomized radient [uiGradients](https://uigradients.com) for iOS.

## ⭐️ Features

- [x] Automatically generated gradients from [uiGradients](https://uigradients.com) in Swift.
- [x] Animateable, randomizable gradient views.

## 📋 Requirements

iOS 9 & Swift 4.2.

## 📲 Installation

### CocoaPods

To install Randient using CocoaPods, add this line to your `Podfile`:

```ruby
pod 'Randient'
```

### Carthage

To install Randient using Carthage, add this line to your `Cartfile`:

```ruby
github "Randient"
```

## 🚀 Usage

### Displaying a gradient
`RandientView` is a simple view that will display a randomly selected gradient from the [uiGradients](https://uigradients.com) catalog.

```swift
let randientView = RandientView()
randientView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
view.addSubview(randientView)
```

Updating to a new gradient is as simple as...

```swift
randientView.randomize(animated: true)
```

### The gradients

An enum of all the gradients from [uiGradients](https://uigradients.com) is generated every time that Randient is built.

These are available in `UIGradients`, and each provide a `UIGradient`:

```
let gradient = UIGradients.royalBlue.gradient

```


### Gradient View extras

`RandientView` inherits from `GradientView`, which under the hood uses simply uses a `CAGradientLayer` for rendering gradients.

`GradientView` provides the following:
- `.colors: [UIColor]?` - Colors of the gradient.
- `.locations: [Double]?` - Locations of each gradient stop.
- `.startPoint: CGPoint` - Start point of the gradient (Defaults to `0.5, 0.0`).
- `.endPoint: CGPoint` - End point of the gradient (Defaults to `0.5, 1.0`).