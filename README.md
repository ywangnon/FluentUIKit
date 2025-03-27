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
- ✅ Modular extensions: `UIView`, `UIButton`, `UILabel`, `UIImageView`, `UITextField`, `UIStackView`
- ✅ Supports iOS 13+

---

## 🔧 Supported Extensions

| Component     | Features Included                                                                 |
|---------------|------------------------------------------------------------------------------------|
| `UIView`      | `withBackgroundColor`, `withCornerRadius`, `withConstraints`, etc.                |
| `UIButton`    | `withTitle`, `withImage`, `withUnderlineTitle`, etc.                              |
| `UILabel`     | `withText`, `withTextColor`, `withUnderline`, etc.                                |
| `UITextField` | `withPlaceholder`, `withSecureEntry`, `withLeftPadding`, etc.                     |
| `UIImageView` | `withImage`, `withRenderingMode`, `withContentMode`, etc.                         |
| `UIStackView` | `withSpacing`, `withArrangedSubviews`, `withDistribution`, etc.                   |

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
