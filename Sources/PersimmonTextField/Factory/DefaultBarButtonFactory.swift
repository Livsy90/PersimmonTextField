import UIKit

public final class BarButtonsFactory: BarButtonsFactoryProtocol {
    
    private let onAction: () -> Void
    
    public init(onAction: @escaping () -> Void) {
        self.onAction = onAction
    }
    
    public func barButtonItems() -> [UIBarButtonItem] {
        [
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
            UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(action))
        ]
    }
    
    @objc
    private func action() {
        onAction()
    }
    
}
