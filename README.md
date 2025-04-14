# FluentUIKit

✨ A lightweight and chainable UIKit extension library that brings fluent syntax to your views, labels, buttons, and more.

---

## 📦 Installation

### Swift Package Manager (SPM)

1. In Xcode:  
   `File` → `Add Packages`  
   Enter the repository URL:

   ```
   https://github.com/ywangnon/FluentUIKit.git
   ```

2. Choose `Up to Next Major` or select a specific version (e.g., `1.0.0`).

---

## 🚀 Features

- ✅ Fluent, chainable syntax for UIKit components
- ✅ Zero dependencies
- ✅ Clean & Modular Extensions
- ✅ Supports iOS 13+

---

## 🔧 Supported Extensions

| Component        | Features Included                                                                 |
|-----------------|------------------------------------------------------------------------------------|
| `UIView`        | `withBackgroundColor`, `withCornerRadius`, `withConstraints`, `withUserInteractionEnabled`, etc. |
| `UIButton`      | `withTitle`, `withImage`, `withUnderlineTitle`, `withFont`, etc.                  |
| `UILabel`       | `withText`, `withTextColor`, `withFont`, `withUnderline`, etc.                    |
| `UITextField`   | `withPlaceholder`, `withSecureEntry`, `withLeftPadding`, `withFont`, etc.         |
| `UIImageView`   | `withImage`, `withRenderingMode`, `withContentMode`, `withRounded`, etc.          |
| `UIStackView`   | `withSpacing`, `withAxis`, `withArrangedSubviews`, `withDistribution`, etc.       |
| `UISwitch`      | `withIsOn`, `withTintColor`, `withOnTintColor`, `withThumbTintColor`              |

---

## 🛠 Coming Soon (Planned Extensions)

| Component               | Features 예정 내용 |
|------------------------|------------------|
| `UISlider`             | `withValue`, `withMinimumValue`, `withMaximumValue`, `withThumbTintColor`, etc. |
| `UISegmentedControl`   | `withSegments`, `withSelectedIndex`, `withTintColor` |
| `UITextView`           | `withText`, `withFont`, `withTextColor`, `withPlaceholder` |
| `UIPageControl`        | `withNumberOfPages`, `withCurrentPage`, `withPageIndicatorTintColor`, etc. |
| `UIScrollView`         | `withIsPagingEnabled`, `withShowsHorizontalScrollIndicator`, `withContentInset`, etc. |

---

## 🧪 Example

```swift
import FluentUIKit

let button = UIButton.make()
    .withTitle("확인")
    .withTitleColor(.white)
    .withBackgroundColor(.systemBlue)
    .withCornerRadius(8)
    .addToSuperview(view)
    .withConstraints {
        [
            $0.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            $0.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            $0.widthAnchor.constraint(equalToConstant: 200),
            $0.heightAnchor.constraint(equalToConstant: 48)
        ]
    }
```

---

## 📌 Requirements

- iOS 13.0+
- Swift 5.9+
- Xcode 15+

---

## 📄 License

MIT License

---

Made with 💙 by [ywangnon]
