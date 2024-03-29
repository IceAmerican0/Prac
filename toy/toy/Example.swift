//
//  Example.swift
//  Toy
//
//  Created by 박성준 on 2023/03/05.
//

import UIKit
import Then
import Lottie

/*
class MainTabBarController: UITabBarController {
    
    private var lottieViews: [AnimationView] = []
    private var previousSelectedIndex: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarStyle()
    }
    
    private func configureTabBarStyle() {
        // Shadow
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = .white
        tabBar.isTranslucent = false
        tabBar.layer.applyShadow(color: .black.withAlphaComponent(0.1), x: 0, y: 0, blur: 15)
        
        // Tint Color
        tabBar.unselectedItemTintColor = .gray400
        tabBar.tintColor = .blue900
        
        // Font
        UITabBarItem
            .appearance()
            .setTitleTextAttributes(
                [
                    .font: SOLFontFamily.OneShinhan.medium.font(size: 11),
                    .foregroundColor: UIColor.gray500
                ],
                for: .normal
            )
        
        UITabBarItem
            .appearance()
            .setTitleTextAttributes(
                [
                    .font: SOLFontFamily.OneShinhan.medium.font(size: 11),
                    .foregroundColor: UIColor.blue900
                ],
                for: .selected
            )
    }
    
    /// 탭바 로띠 세팅
    func configureTabBarLottieUI() {
        lottieViews.removeAll()
        
        guard let items = tabBar.items else { return }

        for (index, tabBarItem) in items.enumerated() {
            guard let type = TabBarItemType(rawValue: index),
                  let lottie = configureLottie(type: type, item: tabBarItem)
            else { return }
            
            lottieViews.append(lottie)
        }
        
        forceAnimateTabBarLottie(at: selectedIndex)
    }
    
    /// 탭바 로띠 애니메이션
    func animateTabBarLottie(at index: Int) {
        guard index != previousSelectedIndex else { return }
        
        forceAnimateTabBarLottie(at: index)
    }
}

fileprivate extension MainTabBarController {
    func configureLottie(type: TabBarItemType, item: UITabBarItem) -> AnimationView? {
        let lottie =  AnimationView().then {
            $0.contentMode = .scaleAspectFit
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.isUserInteractionEnabled = false
            $0.animation = Animation.named(type.lottieName)
            $0.backgroundBehavior = .forceFinish
        }
        
        guard let view = item.value(forKey: "view") as? UIView else { return nil }
        
        view.subviews
            .filter { $0 is AnimationView }
            .forEach { $0.removeFromSuperview() }
        
        view.addSubview(lottie)
        
        NSLayoutConstraint.activate([
            lottie.widthAnchor.constraint(equalToConstant: 32),
            lottie.heightAnchor.constraint(equalToConstant: 32),
            lottie.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lottie.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -5)
        ])
        
        return lottie
    }
    
    func forceAnimateTabBarLottie(at index: Int) {
        previousSelectedIndex = index
        
        lottieViews.enumerated().forEach { (idx, lottie) in
            if index == idx {
                lottie.play(with: .playOnce)
            } else {
                lottie.stop()
            }
        }
    }
}
*/
