//
//  testViewController.swift
//  toy
//
//  Created by 박성준 on 2023/02/01.
//

import RIBs
import RxSwift
import UIKit

protocol testPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class testViewController: UIViewController, testPresentable, testViewControllable {

    weak var listener: testPresentableListener?
}
