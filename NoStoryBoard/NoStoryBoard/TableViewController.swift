//
//  TableViewController.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/07/20.
//

import Foundation
import UIKit

class TableViewController: UIViewController {
    
    private var label = UILabel()
    
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden = true
        
        setupLayout()
    }
    
    func setupLayout() {
        
        view.backgroundColor = .white
        
        view.addSubview(label)
        
        labelLayout()
    }
    
    func labelLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textColor = .white
        label.sizeToFit()
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        GetUrlSessionData()
    }
}
