//
//  ViewController_1A.swift
//  MyHeroTest
//
//  Created by 枫韵海 on 2021/12/23.
//

import UIKit

class ViewController_1A: BaseViewController {

    let blackView = UIView()
    let redView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        blackView.frame = CGRect(x: 70, y: 180, width: 300, height: 50)
        blackView.layer.cornerRadius = 15
        blackView.backgroundColor = .lightGray
        self.view.addSubview(blackView)
        
        redView.frame = CGRect(x: 90, y: 270, width: 260, height: 260)
        redView.layer.cornerRadius = 10
        redView.backgroundColor = .red
        self.view.addSubview(redView)
        
        /*-------------主要--------------*/
        blackView.hero.id = "blackView" //要与第二个页面相同的View的id名相同
        redView.hero.id = "redView"
        /*------------------------------*/
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = ViewController_1B()
        vc.hero.isEnabled = true      //出现动画的页面一定要打开这个
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
