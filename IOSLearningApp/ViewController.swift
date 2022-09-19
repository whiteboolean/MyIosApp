//
//  ViewController.swift
//  IOSLearningApp
//
//  Created by D G on 2022/9/18.
//

import UIKit

/*
 重学IOS
 */
class ViewController: UIViewController {
    
    ///关联控件
    ///@IBOutlet表示这是一个可视化布局中控件的变量

    @IBOutlet weak var tvText: UILabel!
        
    @IBOutlet weak var tvText1: UILabel!
    @IBOutlet weak var tvText2: UILabel!
    
    @IBOutlet weak var uiButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvText.text = "你好，明神，这是在代码中设置的！"
        tvText1.text = "开蔚来的明总"
        tvText2.text = "考研的明总"
        uiButton?.titleLabel?.text = "点我，即可钓蟹"
    
        ///随便加点注释
        
    }
    
    var a = 1

    @IBAction func clickButton(_ sender: Any) {
        a+=1
        print("a:\(a)")
        
    
        ///sender.setTitle("你好", for: .normal)
    }
    
}

