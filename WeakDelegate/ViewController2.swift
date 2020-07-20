import UIKit

protocol ViewController2Delegate: class {
    func helloWorld()
}

class ViewController2: UIViewController {
    weak var delegate: ViewController2Delegate?
    
    @IBAction func helloTapped(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(10)) { [delegate] in // switch this between [weak delegate] and [delegate] to see the difference
            delegate?.helloWorld()
        }
    }
    
}
