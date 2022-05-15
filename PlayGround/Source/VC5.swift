import UIKit
import SnapKit

class ViewController5 : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "VC5"
        view.backgroundColor = .white
        
        self.view.addSubview(label)
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    private let label = UILabel().then {
        $0.text = "VC5"
        $0.font = .systemFont(ofSize: 50)
    }
    
}
