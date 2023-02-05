//
//  LoginViewController.swift
//  Toy
//
//  Created by 박성준 on 2023/02/05.
//

import RIBs
import RxSwift
import UIKit

protocol LoginPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class LoginViewController: UIViewController, LoginPresentable, LoginViewControllable {

    weak var listener: LoginPresentableListener?
}
