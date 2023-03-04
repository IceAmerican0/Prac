//
//  RootViewController.swift
//  Toy
//
//  Created by 박성준 on 2023/02/18.
//

import RIBs
import RxSwift
import UIKit

protocol RootPresentableListener: AnyObject {
    
}


final class RootViewController: UIViewController, RootPresentable, RootViewControllable {
    
    weak var listener: RootPresentableListener?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
    }
    
    func present(viewController: RIBs.ViewControllable) {
        viewController.uiviewController.modalPresentationStyle = .fullScreen
        present(viewController.uiviewController, animated: false, completion: nil)
    }
    
}
