//
//  LoginViewController.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/07/20.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    private var label = UILabel()
    
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden = true
        
        setupLayout()
    }
    
    func setupLayout() {
        
        view.backgroundColor = .red
        
        view.addSubview(label)
        
        labelLayout()
    }
    
    func labelLayout() {
        label.text = "LoginViewController"
        label.textColor = .white
        label.sizeToFit()
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
