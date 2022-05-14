import UIKit
import SnapKit
import Then

class ViewController1 : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "VC1"
        self.navigationController?.isNavigationBarHidden = false
        
        self.view.backgroundColor = .white
        
        view.addSubview(goVC2Btn)
        goVC2Btn.snp.makeConstraints {
            $0.center.equalTo(view.snp.center)
            $0.width.equalTo(100)
            $0.height.equalTo(100)
        }
    }
    
    let goVC2Btn = UIButton().then {
        $0.setTitle("go VC2", for: .normal)
        $0.backgroundColor = .gray
        $0.addTarget(self, action: #selector(btnDidTapped), for: .touchUpInside)
    }
    
    @objc func btnDidTapped(){
        self.navigationController?.pushViewController(ViewController2(), animated: true)
    }
}
