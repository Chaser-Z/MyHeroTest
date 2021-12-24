//
//  BaseViewController.swift
//  MyHeroTest
//
//  Created by 张海南 on 2021/12/23.
//

import UIKit
import Hero

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addGestures()
    }

    private func addGestures() {
        // 单个手指平扫开启开闭 Hero 的 debug 模式
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleOneFingerSwipe(swipeRecognizer:)))
        swipeGesture.numberOfTouchesRequired = 1
        self.view.addGestureRecognizer(swipeGesture)
    }

    @objc func handleOneFingerSwipe(swipeRecognizer: UISwipeGestureRecognizer) {
        if swipeRecognizer.state == .recognized {
            HeroDebugPlugin.isEnabled = !HeroDebugPlugin.isEnabled
        }
    }

}
