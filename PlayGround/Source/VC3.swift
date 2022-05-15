import UIKit
import SnapKit
import Then

class ViewController3: UIViewController, UITabBarDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "VC3"
        self.view.backgroundColor = .white
        self.view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    private let label = UILabel().then {
        $0.text = "VC3"
        $0.font = .systemFont(ofSize: 50)
    }
    
}
