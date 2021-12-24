//
//  ViewController_2A.swift
//  MyHeroTest
//
//  Created by 枫韵海 on 2021/12/23.
//

import UIKit

class ViewController_2A: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let blackView = UIView()
        blackView.frame = CGRect(x: 50, y: 120, width: 50, height: 50)
        blackView.layer.cornerRadius = 25
        blackView.backgroundColor = .lightGray
        self.view.addSubview(blackView)
        
        /*-------------主要--------------*/
        blackView.hero.id = "blackView"
        /*------------------------------*/
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = ViewController_2B()
        vc.hero.isEnabled = true //开启动画
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
