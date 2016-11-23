//
//  CustomViewController.swift
//  Swift_UICollectionView
//
//  Created by 全球蛙 on 2016/11/22.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    var collctionView: UICollectionView!
    var array = ["","","","",""]
    let identity:String = "customCollectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let floatLayOut = UICollectionViewFlowLayout.init()
        
        floatLayOut.itemSize = CGSize(width:(UIScreen.main.bounds.size.width-40)/3,height:150)
        floatLayOut.minimumInteritemSpacing = 10;
        floatLayOut.minimumLineSpacing = 10
        floatLayOut.scrollDirection = .vertical
        
        self.collctionView = UICollectionView.init(frame: CGRect(x:10,y:0,width:UIScreen.main.bounds.size.width-20,height:UIScreen.main.bounds.size.height), collectionViewLayout: floatLayOut)
        self.collctionView.delegate = self;
        self.collctionView.dataSource = self;
        self.view.addSubview(collctionView)
        self.collctionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: identity)
        self.collctionView.backgroundColor = UIColor.white
        
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CustomCollectionViewCell = collctionView.dequeueReusableCell(withReuseIdentifier: identity, for: indexPath) as! CustomCollectionViewCell
        cell.backgroundColor = UIColor.red
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let detail = DetailViewController()
        
        self.navigationController?.pushViewController(detail, animated: false)
        detail.title = "详情页面"
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
