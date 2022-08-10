//
//  ViewController.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/07/19.
//

import UIKit
import SnapKit
import FSCalendar

class ViewController: UIViewController {
    
    fileprivate weak var FSCalender : FSCalendar!
    
    private var nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fsCalendar = FSCalendar(frame: CGRect(x: 0, y: 30, width: 320, height: 400))
        fsCalendar.dataSource = self
        fsCalendar.delegate = self
        
        view.addSubview(fsCalendar)
        self.FSCalender = fsCalendar
        
        setupLayout()
    }
    
    func setupLayout()
    {
        self.view.backgroundColor = .white
        self.view.addSubview(nextButton)
        self.view.addSubview(FSCalender)
        
        buttonLayout()
        calendarLayout()
    }
    
    func calendarLayout()
    {
        FSCalender.appearance.headerMinimumDissolvedAlpha = 0.0
        FSCalender.locale = Locale(identifier: "ko_KR")
    }
    
    func buttonLayout()
    {
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.layer.cornerRadius = 10
        
        nextButton.snp.makeConstraints{ (make) in
            make.centerX.equalTo(self.view)
            make.bottomMargin.equalTo(-50)
        }
        
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

extension ViewController: FSCalendarDelegate, FSCalendarDataSource {
    func calendar(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) {
//        calendarHeight.constant = bounds.height
        
        calendar.snp.updateConstraints{ (make) in
            make.height.equalTo(bounds.height)
            make.centerX.equalTo(self.view)
        }
        
        self.view.layoutIfNeeded()
    }
}
