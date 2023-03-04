//
//  HomeViewController.swift
//  Toy
//
//  Created by 박성준 on 2023/02/19.
//

import RIBs
import RxSwift
import UIKit
import SnapKit
import Then

protocol HomePresentableListener: AnyObject {
    func moveToLoginView()
}

final class HomeViewController: UIViewController, HomePresentable, HomeViewControllable {

    weak var listener: HomePresentableListener?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        buildLayouts()
    }
    
    private func buildLayouts() {
        buildButtons()
    }
    
    private func buildButtons() {
        let loginButton = UIButton().then {
            $0.setTitle("Login", for: .normal)
            $0.setTitleColor(UIColor.black, for: .normal)
            $0.backgroundColor = UIColor.white
            view.addSubview($0)
            
            $0.snp.makeConstraints { make in
                make.width.height.equalTo(50)
                make.top.equalTo(view.safeAreaLayoutGuide)
                make.trailing.equalTo(view).inset(20)
            }
            
            
        }
        
        
    }
    
    func present(viewController: ViewControllable) {
        present(viewController.uiviewController, animated: true, completion: nil)
    }
    
}
