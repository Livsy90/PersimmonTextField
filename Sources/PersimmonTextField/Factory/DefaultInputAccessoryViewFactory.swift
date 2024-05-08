import UIKit

public final class DefaultInputAccessoryViewFactory: InputAccessoryViewFactoryProtocol {
    
    private var action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public func inputAccessoryView() -> UIView {
        let actionHandler = UIAction { [weak self] _ in
            self?.action()
        }
        let buttons = [
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
            UIBarButtonItem(systemItem: .done, primaryAction: actionHandler)
        ]
        let bar = UIToolbar()
        bar.items = buttons
        bar.sizeToFit()
        
        return bar
    }
    
}
