//
//  ViewController.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/07/19.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource {
    
    fileprivate weak var calendar : FSCalendar!
    
    private var nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fsCalendar = FSCalendar(frame: CGRect(x: 0, y: 30, width: 320, height: 400))
        fsCalendar.dataSource = self
        fsCalendar.delegate = self
        
        view.addSubview(fsCalendar)
        self.calendar = fsCalendar
        
        setupLayout()
    }
    
    func setupLayout()
    {
        self.view.backgroundColor = .white
        self.view.addSubview(nextButton)
        self.view.addSubview(calendar)
        
        buttonLayout()
        calendarLayout()
    }
    
    func calendarLayout()
    {
        calendar.appearance.headerMinimumDissolvedAlpha = 0.0
        calendar.locale = Locale(identifier: "ko_KR")
    }
    
    func buttonLayout()
    {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.layer.cornerRadius = 10
        
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        
        self.nextButton.addTarget(self, action: #selector(moveToNextView), for: .touchUpInside)
    }
    
    @objc func moveToNextView() {
        let tableViewController = TableViewController()
        self.navigationController?.pushViewController(tableViewController, animated: true)
    }
    
    func calendarConstraint(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) {
        
        calendar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        calendar.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        
        self.view.layoutIfNeeded()
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

