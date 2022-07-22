//
//  ViewController.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    private var nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    func setupLayout(){
        view = UIView()
        
        view.backgroundColor = .systemBlue
        view.addSubview(nextButton)
        
        buttonLayout()
    }
    
    func buttonLayout(){
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.layer.cornerRadius = 10
        nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        self.nextButton.addTarget(self, action: #selector(moveToNextView), for: .touchUpInside)
    }
    
    @objc func moveToNextView() {
        let nextViewController = LoginViewController()
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }


}

