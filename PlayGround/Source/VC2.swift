import UIKit
import SnapKit

class ViewController2 : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "VC2"
        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.bullet"), style: .plain, target: self, action: #selector(btnDidTapped))
        
    }
    
    @objc private func btnDidTapped(){
        self.navigationController?.pushViewController(ViewController3(), animated: true)
    }
    
}
