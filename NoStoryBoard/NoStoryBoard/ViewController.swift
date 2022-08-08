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
        
        view.backgroundColor = .white
        view.addSubview(nextButton)
        
        buttonLayout()
    }
    
    func buttonLayout(){
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.layer.cornerRadius = 10
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        self.nextButton.addTarget(self, action: #selector(moveToNextView), for: .touchUpInside)
    }
    
    @objc func moveToNextView() {
        let tableViewController = TableViewController()
        self.navigationController?.pushViewController(tableViewController, animated: true)
    }


}

extension UINavigationController: ObservableObject, UIGestureRecognizerDelegate {
    override public func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

