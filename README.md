# DGFadingLabel
A custom UILabel that fades away the end of your text when text is too large to fit within the label's frame.
<div>
<img src="https://user-images.githubusercontent.com/34573243/151211079-858f4409-621c-45ba-9779-b20271920572.png" width=250 />
</div>

## Requirements
- iOS 12.0+
- Swift 5.5+
- Xcode 10.0+


## Installation

### SPM
```
File > Add Packages > https://github.com/donggyushin/DGFadingLabel
```

### CocoaPod
```
pod 'DGFadingLabel', :git => 'https://github.com/donggyushin/DGFadingLabel'
```

## Usage
```
// Usage is same with normal UILabel

let label = DGFadingLabel()
label.text = "Long enough textLong enough textLong enough textLong enough textLong enough textLong enough textLong enough text"
```

