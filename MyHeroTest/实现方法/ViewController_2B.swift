//
//  ViewController_2B.swift
//  MyHeroTest
//
//  Created by 枫韵海 on 2021/12/23.
//

import UIKit

class ViewController_2B: BaseViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let blackView = UIView()
        blackView.frame = CGRect(x: 70, y: 180, width: 300, height: 50)     //修改了黑色View的位置与大小
        blackView.layer.cornerRadius = 15
        blackView.backgroundColor = .lightGray
        self.view.addSubview(blackView)
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 15
        layout.itemSize = CGSize(width: 60, height: 60)
        layout.scrollDirection = .vertical
        
        collectionView = UICollectionView(frame: CGRect(x: 90, y: 270, width: 260, height: 300), collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        self.view.addSubview(collectionView)
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        /*-------------主要--------------*/
        blackView.hero.id = "blackView"
        collectionView.hero.modifiers = [.cascade]      //层叠应用增加子视图的延迟修饰符(添加子视图动画时会有延迟加载)
        /*------------------------------*/
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.dismiss(animated: true, completion: nil)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 50
    }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.layer.cornerRadius = 10
        cell.backgroundColor = .red
        
        /*-------------主要--------------*/
        cell.hero.modifiers = [.fade,.scale(0.5)]   //在添加cell时为其添加动画[.fade(淡入淡出的效果),.scale(0.5)放大倍数为0.5]
        /*------------------------------*/
        
        return cell
    }
}
