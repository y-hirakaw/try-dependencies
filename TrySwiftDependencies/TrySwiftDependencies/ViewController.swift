import UIKit
import Dependencies

class ViewController: UIViewController {
    
    @Dependency(ViewModel.self) private var viewModel
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateNumberLabel()
    }
    
    // TODO: UIKitでは使えない？今度確認する
    @IBAction func incrementTapped(_ sender: Any) {
        self.viewModel.incrementNumber()
        self.updateNumberLabel()
    }
    
    func updateNumberLabel() {
        self.numberLabel.text = self.viewModel.displayNumber
    }
}

