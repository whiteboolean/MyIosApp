//
//  ListController.swift
//  IOSLearningApp
//
//  Created by D G on 2022/9/22.
//

import UIKit

class ListController: UIViewController, UITableViewDelegate{

    var dataArray:[String] = []
    
    
    ///列表数据源
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ///添加一些测试数据
        ///如果是真实项目
        ///这个部分数据可能来自网络，数据库等
        for index in 0...99 {
            dataArray.append("我是小学生:\(index)")
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()

    }
    
}


extension ListController :UITableViewDataSource,UITabBarDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                 for:indexPath)
        //显示数据
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    
    
    
}
