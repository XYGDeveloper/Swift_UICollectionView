//
//  CustomCollectionViewCell.swift
//  Swift_UICollectionView
//
//  Created by 全球蛙 on 2016/11/22.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    var img:UIImageView!
    var nikeName:UILabel!
    var detailName:UILabel!
    
    override init(frame: CGRect) {
    super.init(frame: frame)
        
        self.img = UIImageView.init()
        self.contentView.addSubview(img)
        img.backgroundColor = UIColor.purple
        self.nikeName = UILabel.init()
        self.contentView.addSubview(nikeName)
        self.nikeName.backgroundColor = UIColor.blue
        self.detailName = UILabel.init()
        self.contentView.addSubview(detailName)
        self.detailName.backgroundColor = UIColor.cyan
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.img.frame = CGRect(x:0,y:0,width:self.contentView.frame.size.width,height:100);
        self.nikeName.frame = CGRect(x:0,y:100,width:self.contentView.frame.size.width,height:25)
        self.detailName.frame = CGRect(x:0,y:125,width:self.contentView.frame.size.width,height:25)
        
    }
    
    
    
    
}
