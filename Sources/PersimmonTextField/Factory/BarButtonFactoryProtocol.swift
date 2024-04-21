import UIKit

public protocol BarButtonsFactoryProtocol: AnyObject {
    func barButtonItems() -> [UIBarButtonItem]
}
