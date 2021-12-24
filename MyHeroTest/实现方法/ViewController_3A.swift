//
//  ViewController_3A.swift
//  MyHeroTest
//
//  Created by 枫韵海 on 2021/12/23.
//

import UIKit

class ViewController_3A: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        blueView.frame = CGRect(x: 0, y: 80, width: view.bounds.width, height: 200)
        view.addSubview(blueView)
        
        let scanView = UIImageView(image: UIImage(named: "card_scan"))
        scanView.frame = CGRect(x: 100, y: 30, width: 60, height: 60)
        blueView.addSubview(scanView)
        
        let codeView = UIImageView(image: UIImage(named: "card_code"))
        codeView.frame = CGRect(x: 200, y: 30, width: 60, height: 60)
        blueView.addSubview(codeView)
        
        blueView.hero.id = "blueView"
        scanView.hero.id = "barCode"
        codeView.hero.id = "qrCode"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = ViewController_3B()
        vc.hero.isEnabled = true
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
