import UIKit

open class DGFadingLabel: UILabel {
    open override var text: String? {
        didSet {
            fadeTailIfRequired()
        }
    }
    
    private var originalText: String? = ""
    private var isTruncatingEllipsis = false
    
    open override var numberOfLines: Int {
        didSet {
            numberOfLines = 1
        }
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        fadeTailIfRequired()
    }
    
    
    /// The function that handles fading the tail end of the text if the text goes
    /// beyond the bounds of the label's width
    private func fadeTailIfRequired() {
        numberOfLines = 1
        if !isTruncatingEllipsis {
            if bounds.width > CGFloat.zero && intrinsicContentSize.width > bounds.width + 5 {
                allowsDefaultTighteningForTruncation = true
                let gradient = CAGradientLayer()
                gradient.frame = bounds
                gradient.colors = [UIColor.white.cgColor, UIColor.clear.cgColor]
                gradient.startPoint = CGPoint(x: 0.8, y: 0.5)
                gradient.endPoint = CGPoint(x: 0.99, y: 0.5)
                layer.mask = gradient
                removeEllipsis()
                return
            }
            
            if originalText == text {
                layer.mask = nil
            }
        }
    }
    
    private func removeEllipsis() {
        isTruncatingEllipsis = true
        while intrinsicContentSize.width > bounds.width {
            text = String(text!.dropLast())
        }
        isTruncatingEllipsis = false
    }
}
