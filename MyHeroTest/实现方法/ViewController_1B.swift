//
//  ViewController_1B.swift
//  MyHeroTest
//
//  Created by 枫韵海 on 2021/12/23.
//

import UIKit

class ViewController_1B: BaseViewController {

    let blackView = UIView()
    let redView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        redView.frame = self.view.bounds    //修改红色的大小为全屏
//        redView.layer.cornerRadius = 10     去掉圆角(留着也可以)
        redView.backgroundColor = .red
        self.view.addSubview(redView)   //先添加红色的View，否则会把黑色的View盖住
        
        blackView.frame = CGRect(x: 70, y: 90, width: 300, height: 50) //将黑色的View向上移动
        blackView.layer.cornerRadius = 15
        blackView.backgroundColor = .lightGray
        self.view.addSubview(blackView)
        
        let whiteView = UIView()    //新添加一个白色的View
        whiteView.frame = CGRect(x: 70, y: 350, width: 300, height: 500)    //View的最终位置
        whiteView.backgroundColor = .white
        whiteView.layer.cornerRadius = 15
        self.view.addSubview(whiteView)
        
        /*-------------主要--------------*/
        blackView.hero.id = "blackView"
        redView.hero.id = "redView"
        
        // translate(y:500) - 设置view是从y = 500的位置向y = 300的位置移动，useGlobalCoordinateSpace设置为独立的VIew(不设置的话效果差)
        whiteView.hero.modifiers = [.translate(y:500),.useGlobalCoordinateSpace]
        /*------------------------------*/
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.dismiss(animated: true, completion: nil)
     }
}
