import UIKit

class DelegateViewController: UIViewController, ViewController2Delegate {
    func helloWorld() {
        NSLog("hello world!")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ViewController2
        destination.delegate = self
    }
    
    deinit {
        NSLog("DelegateVC deiniting")
    }
}
