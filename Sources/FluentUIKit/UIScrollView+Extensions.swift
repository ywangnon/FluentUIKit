import UIKit

public extension UIScrollView {
    static func make() -> UIScrollView {
        return UIScrollView()
    }
    
    @discardableResult
    func withContentSize(_ size: CGSize) -> Self {
        self.contentSize = size
        return self
    }
    
    @discardableResult
    func withContentOffset(_ offset: CGPoint) -> Self {
        self.contentOffset = offset
        return self
    }
    
    @discardableResult
    func withContentInset(_ insets: UIEdgeInsets) -> Self {
        self.contentInset = insets
        return self
    }
    
    @discardableResult
    func withIsPagingEnabled(_ isEnabled: Bool) -> Self {
        self.isPagingEnabled = isEnabled
        return self
    }
    
    @discardableResult
    func withShowsHorizontalScrollIndicator(_ shows: Bool) -> Self {
        self.showsHorizontalScrollIndicator = shows
        return self
    }
    
    @discardableResult
    func withShowsVerticalScrollIndicator(_ shows: Bool) -> Self {
        self.showsVerticalScrollIndicator = shows
        return self
    }
    
    @discardableResult
    func withBounces(_ bounces: Bool) -> Self {
        self.bounces = bounces
        return self
    }
    
    @discardableResult
    func withAlwaysBounceVertical(_ alwaysBounce: Bool) -> Self {
        self.alwaysBounceVertical = alwaysBounce
        return self
    }
    
    @discardableResult
    func withAlwaysBounceHorizontal(_ alwaysBounce: Bool) -> Self {
        self.alwaysBounceHorizontal = alwaysBounce
        return self
    }
    
    @discardableResult
    func withScrollIndicatorInsets(_ insets: UIEdgeInsets) -> Self {
        self.scrollIndicatorInsets = insets
        return self
    }
    
    @discardableResult
    func withMinimumZoomScale(_ scale: CGFloat) -> Self {
        self.minimumZoomScale = scale
        return self
    }
    
    @discardableResult
    func withMaximumZoomScale(_ scale: CGFloat) -> Self {
        self.maximumZoomScale = scale
        return self
    }
    
    @discardableResult
    func withZoomScale(_ scale: CGFloat) -> Self {
        self.zoomScale = scale
        return self
    }
    
    @discardableResult
    func withIsScrollEnabled(_ isEnabled: Bool) -> Self {
        self.isScrollEnabled = isEnabled
        return self
    }
    
    @discardableResult
    func withKeyboardDismissMode(_ mode: UIScrollView.KeyboardDismissMode) -> Self {
        self.keyboardDismissMode = mode
        return self
    }
    
    @discardableResult
    func withRefreshControl(_ refreshControl: UIRefreshControl) -> Self {
        self.refreshControl = refreshControl
        return self
    }
} 