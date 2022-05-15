import UIKit
import SnapKit

class ViewController4 : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "VC4"
        view.backgroundColor = .white
        
        self.view.addSubview(label)
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    private let label = UILabel().then {
        $0.text = "VC4"
        $0.font = .systemFont(ofSize: 50)
    }
    
}
