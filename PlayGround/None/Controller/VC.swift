//
//  VC.swift
//  PlayGround
//
//  Created by 장석우 on 2022/05/04.
//

import Foundation
import UIKit
import SnapKit
import Then

class MainVC : UIViewController{
   
    
    private let tableView = UITableView().then (){
        $0.reloadData()
    }
    
    private let homeBtn = UIButton().then {
        $0.setTitle("home", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 20)
        
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemGray
        
        $0.layer.cornerRadius = 7
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MainVC - viewDidLoad")
        
        
        self.title = "MainVC"
        self.view.backgroundColor = .white
        
        self.view.addSubview(homeBtn)
        setLayout()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "menu", style: .plain, target: self, action: nil)    }
    
    
}

extension MainVC{
    
    func setLayout() {
        setViewHierarchies()
        setConstraits()
        }
    
    func setViewHierarchies(){
        view.addSubview(homeBtn)
    }

    func setConstraits(){
        homeBtn.snp.makeConstraints {
            $0.height.equalTo(70)
            $0.width.equalTo(100)
            $0.center.equalTo(view.snp.center)
        }
    }
}
