//
//  ViewController.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/07/19.
//

import UIKit
import SnapKit
import FSCalendar

// ViewModel 이용한 화면 세팅
class ViewController: UIViewController {
    
    fileprivate weak var FSCalender : FSCalendar!
    
    private var nextButton = UIButton()
    private var customCollectionView : CustomCollectionView!
    
    var selectedDate : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubview()
    }
    
    func addSubview()
    {
        self.view.backgroundColor = .white
        
        self.view.addSubview(contentScrollView)
        
        let fsCalendar = FSCalendar(frame: CGRect(x: 0, y: 50, width: mainViewBounds.width, height: 300))
        fsCalendar.dataSource = self
        fsCalendar.delegate = self
        self.FSCalender = fsCalendar
        
        contentScrollView.addSubview(nextButton)
        contentScrollView.addSubview(fsCalendar)
        contentScrollView.addSubview(customCollectionView)
        
        setLayouts()
    }
    
    // MARK: Layout
    
    func setLayouts()
    {
        scrollViewLayout()
        calendarLayout()
        buttonLayout()
    }
    
    private let contentScrollView: UIScrollView = {
        
        let scrollView = UIScrollView()
        
        return scrollView
    }()
    
    func scrollViewLayout()
    {
        contentScrollView.snp.makeConstraints{
            $0.top.bottom.leading.trailing.equalToSuperview()
        }
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
        
        nextButton.snp.makeConstraints{
            $0.centerX.equalTo(contentScrollView)
            $0.bottom.equalTo(contentScrollView).offset(50)
        }
        
        self.nextButton.addTarget(self, action: #selector(moveToNextView), for: .touchUpInside)
    }
    
    @objc func moveToNextView() {
        let tableViewController = TableViewController()
        self.navigationController?.pushViewController(tableViewController, animated: true)
    }


}

// MARK: CollectionView

class CustomCollectionView : UICollectionView {
    
}

class CollectionViewCell : UICollectionViewCell {
    
    
    func setUpCell()
    {
        
    }
}

// MARK: Extension

extension UINavigationController: ObservableObject, UIGestureRecognizerDelegate {
    override public func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

extension ViewController: FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance
{
    func calendar(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) // 레이아웃 조절
    {
        self.FSCalender.snp.updateConstraints{
            $0.height.equalTo(bounds.height)
            $0.centerX.equalTo(contentScrollView)
        }
        
        self.view.layoutIfNeeded()
    }
    
    func maximumDate(for calendar: FSCalendar) -> Date
    { // 오늘 이후 선택 불가
        return Date()
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        selectedDate = date.setTodayDate(selected: date)
    }
}
