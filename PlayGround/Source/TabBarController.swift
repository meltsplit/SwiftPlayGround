import UIKit

class TabBarController1 : UITabBarController {
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTabBarItems()
        self.selectedIndex = 1
        
    }
}

//MARK: - Custom Method
extension TabBarController1 {
    private func makeTabBarItems(){
        
        let VC1 = ViewController1()
        VC1.tabBarItem =  UITabBarItem(title: "VC1", image: UIImage(systemName: "car"), selectedImage: UIImage(systemName: "car.fill"))
        
        let VC2 = ViewController2()
        VC2.tabBarItem = UITabBarItem(title: "VC2", image: UIImage(systemName: "person.circle"), selectedImage: UIImage(systemName: "person.circle.fill"))
        
        let VC3 = ViewController3()
        VC3.tabBarItem = UITabBarItem(title: "VC3", image: UIImage(systemName: "eye"), selectedImage: UIImage(systemName: "eye.fill"))
        
        
        let VC4 = ViewController4()
        VC4.tabBarItem = UITabBarItem(title: "VC4", image: UIImage(systemName: "flame"), selectedImage: UIImage(systemName: "flame.fill"))
        
        let VC5 = ViewController5()
        VC5.tabBarItem = UITabBarItem(title: "VC5", image: UIImage(systemName: "bolt"), selectedImage: UIImage(systemName: "bolt.fill"))
        
        let VC6 = ViewController6()
        VC6.tabBarItem = UITabBarItem(title: "VC6", image: UIImage(systemName: "hare"), selectedImage: UIImage(systemName: "hare.fill"))
        
        
        
        
        viewControllers = [VC1,VC2,VC3,VC4,VC5,VC6]
        
        self.customizableViewControllers = [VC1,VC2,VC5]
    }
}
