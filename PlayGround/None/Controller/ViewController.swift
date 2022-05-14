//
//  ViewController.swift
//  PlayGround
//
//  Created by 장석우 on 2022/05/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(mainBtn)
        
        
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    let mainBtn : UIButton = {
        let button = UIButton()
        button.setTitle("button1", for: .normal)
        button.tintColor = UIColor.red
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        print(button.titleLabel?.text)
        return button
    }()
    
}

