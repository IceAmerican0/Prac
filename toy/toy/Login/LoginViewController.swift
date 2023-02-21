//
//  LoginViewController.swift
//  Toy
//
//  Created by 박성준 on 2023/02/20.
//

import RIBs
import RxSwift
import UIKit
import Then

protocol LoginPresentableListener: AnyObject {
    func Login(ID: String?, PW: String?)
}

final class LoginViewController: UIViewController, LoginPresentable, LoginViewControllable {

    weak var listener: LoginPresentableListener?
    private let disposeBag = DisposeBag()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Method is not supported")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        buildLayouts()
    }
    
    private func buildLayouts() {
        let idField = UITextField().then {
            $0.placeholder = "Input ID"
            $0.borderStyle = UITextField.BorderStyle.line
            view.addSubview($0)
            
            $0.snp.makeConstraints { make in
                
            }
        }
        
        let pwField = UITextField().then {
            $0.placeholder = "Input PW"
            $0.borderStyle = UITextField.BorderStyle.line
            view.addSubview($0)
            
            $0.snp.makeConstraints { make in
                
            }
        }
        
        let loginButton = UIButton().then {
            $0.setTitle("Login", for: .normal)
            $0.setTitleColor(UIColor.black, for: .normal)
            view.addSubview($0)
            
            $0.snp.makeConstraints { make in
                
            }
        }
    }
}
