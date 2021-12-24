//
//  ViewController_3B.swift
//  MyHeroTest
//
//  Created by 枫韵海 on 2021/12/23.
//

import UIKit
import SnapKit

class ViewController_3B: BaseViewController {

    let blueView = UIView()
    let whiteBGView = UIView()
    
    let cardTopView = UIView()
    let paymentBGView = UIView()
    let paymentLabel = UILabel()
    
    let cardBottomView = UIView()
    let cardImageView = UIImageView()
    let cardTitleLabel = UILabel()
    let cardSubTitleLabel = UILabel()
    
    let barCodeView = UIImageView()
    let barCodeLabel = UILabel()
    let qrCode = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 蓝色背景View
        view.addSubview(blueView)
        blueView.backgroundColor = .blue
        blueView.frame = view.bounds
        
        // 白色背景View
        blueView.addSubview(whiteBGView)
        whiteBGView.backgroundColor = .white
        whiteBGView.layer.cornerRadius = 5
        whiteBGView.clipsToBounds = true
        whiteBGView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.top.equalToSuperview().offset(60)
            make.bottom.equalToSuperview().offset(-130)
        }
        
        // 顶部付款码提示View
        whiteBGView.addSubview(cardTopView)
        cardTopView.backgroundColor = .red
        cardTopView.snp.makeConstraints { (make) in
            make.left.right.top.equalToSuperview()
            make.height.equalTo(40)
        }
        
        // 付款码背景View
        whiteBGView.addSubview(paymentBGView)
        paymentBGView.backgroundColor = .red
        paymentBGView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalTo(160)
            make.height.equalTo(50)
        }
        
        // 付款码Label
        paymentBGView.addSubview(paymentLabel)
        paymentLabel.text = "付款码"
        paymentLabel.textColor = .white
        paymentLabel.textAlignment = .center
        paymentLabel.font = UIFont.systemFont(ofSize: 16)
        paymentLabel.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        
        // 底部一卡通提示View
        whiteBGView.addSubview(cardBottomView)
        cardBottomView.backgroundColor = .clear
        cardBottomView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalTo(whiteBGView)
            make.height.equalTo(70)
        }
        
        // 底部一卡通提示图片
        cardBottomView.addSubview(cardImageView)
        cardImageView.image = UIImage(named: "ipass_card_logo")
        cardImageView.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.width.equalTo(60)
            make.height.equalTo(50)
        }
        
        // 底部一卡通标题
        cardBottomView.addSubview(cardTitleLabel)
        cardTitleLabel.text = "一卡通"
        cardTitleLabel.textAlignment = .center
        cardTitleLabel.font = UIFont.systemFont(ofSize: 14)
        cardTitleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(cardImageView.snp.right).offset(20)
            make.top.equalTo(cardImageView.snp.top).offset(5)
        }
        
        // 底部一卡通副标题
        cardBottomView.addSubview(cardSubTitleLabel)
        cardSubTitleLabel.text = "方便快捷校园支付"
        cardSubTitleLabel.textColor = .lightGray
        cardSubTitleLabel.textAlignment = .center
        cardSubTitleLabel.font = UIFont.systemFont(ofSize: 12)
        cardSubTitleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(cardTitleLabel)
            make.bottom.equalTo(cardImageView.snp.bottom).offset(-8)
        }
        
        // 条形码
        whiteBGView.addSubview(barCodeView)
        barCodeView.image = UIImage(named: "code1")
        barCodeView.backgroundColor = .lightGray
        barCodeView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(paymentBGView.snp.bottom).offset(30)
            make.height.equalTo(80)
        }
        
        // 付款编码提示
        whiteBGView.addSubview(barCodeLabel)
        barCodeLabel.text = " 付款编码"
        barCodeLabel.textColor = .lightGray
        barCodeLabel.textAlignment = .center
        barCodeLabel.font = UIFont.systemFont(ofSize: 12)
        barCodeLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(barCodeView.snp.bottom).offset(20)
            make.height.equalTo(20)
        }
        
        // 二维码
        whiteBGView.addSubview(qrCode)
        qrCode.image = UIImage(named: "code2")
        qrCode.backgroundColor = .lightGray
        qrCode.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(barCodeLabel.snp.bottom).offset(15)
            make.bottom.equalTo(cardBottomView.snp.top).offset(-15)
            make.width.equalTo(qrCode.snp.height)
        }
        
        blueView.hero.id = "blueView"
        qrCode.hero.id = "qrCode"
        barCodeView.hero.id = "barCode"

        whiteBGView.hero.modifiers = [.fade,.translate(y:-800),.useGlobalCoordinateSpace]
        cardBottomView.hero.modifiers = [.translate(x:-500),.useGlobalCoordinateSpace]
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.dismiss(animated: true, completion: nil)
    }
}
