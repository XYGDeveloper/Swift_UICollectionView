//
//  BasicViewController.swift
//  Swift_UICollectionView
//
//  Created by 全球蛙 on 2016/11/22.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

import UIKit

class BasicViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    var collectionView:UICollectionView!
    let identity:String = "collectionCell"
 
    override func viewDidLoad() {
        super.viewDidLoad()

        let floatLayOut  = UICollectionViewFlowLayout.init()
        
        floatLayOut.itemSize = CGSize(width:(UIScreen.main.bounds.size.width-10)/2,height:100);
        floatLayOut.scrollDirection = .vertical
        floatLayOut.minimumLineSpacing = 10
        floatLayOut.minimumInteritemSpacing = 0
        
        self.collectionView = UICollectionView.init(frame: UIScreen.main.bounds, collectionViewLayout: floatLayOut)
        self.collectionView.delegate = self;
        self.collectionView.dataSource = self;
        self.view.addSubview(collectionView)
        
        self.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: identity)
        

    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 100
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: identity, for: indexPath)
        cell.backgroundColor = UIColor.purple
        
        return cell;
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
