//
//  MainViewController.swift
//  Swift_UICollectionView
//
//  Created by 全球蛙 on 2016/11/22.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView:UITableView?
    var array = ["系统cell","自定义cell","自定义头部","",""]
    let identity:String = "cell"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        self.tableView = UITableView.init(frame: UIScreen.main.bounds, style: .plain)
        self.view.addSubview(tableView!)
        self.tableView?.delegate = self;
        self.tableView?.dataSource = self;
        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: identity)
        
                // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identity)!
        cell.textLabel?.text = self.array[indexPath.row]
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if indexPath.row == 0 {
            
            let basic = BasicViewController()
            
            self.navigationController?.pushViewController(basic, animated: true)
        }else if indexPath.row == 1
        {
        
            let custom = CustomViewController()
            self.navigationController?.pushViewController(custom, animated: true)
            
        }
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
