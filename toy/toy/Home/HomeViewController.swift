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
    func moveToLogin()
}

final class HomeViewController: UIViewController, HomePresentable, HomeViewControllable {

    weak var listener: HomePresentableListener?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Method is not supported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black
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
                make.centerX.centerY.equalTo(view)
                make.width.height.equalTo(100)
            }
            
        }
        
        
    }
    
    func present(viewController: ViewControllable) {
        present(viewController.uiviewController, animated: true, completion: nil)
    }
    
}
