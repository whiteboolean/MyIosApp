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
    
    @IBOutlet weak var utfTextField: UITextField!
    
    @IBOutlet weak var iconView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvText.text = "你好，明神，这是在代码中设置的！"
        tvText1.text = "开蔚来的明总"
        tvText2.text = "考研的明总"
        ///uiButton?.titleLabel?.text = "点我，即可钓蟹"
        ///随便加点注释
        uiButton.addTarget(self, action: #selector(buttonClick(_:)), for: .touchUpInside)
        
        iconView.image = UIImage(named: "girl2")
    }

    var count = 1
    @IBAction func uiButton(_ sender: UIButton) {
        count+=1
        print("我是小按钮:\(count)")
        sender.setTitle("点击了\(count)", for: .normal)
    }
    
    @objc func buttonClick(_ sender:UIButton){
        print("我点了咋啦")
    }
    
    @IBAction func loginClick(_ sender: UIButton) {
        let inputText = utfTextField.text!
        
        if inputText.isEmpty{
            //如果为空
            //提示为空
            print("用户名不能为空")
            return
        }
        print("输入文本为:\(inputText)")
    }
    

    
    
    @IBAction func openPage(_ sender: UIButton) {
        print("点击了第二个按钮")
       let controller =  storyboard!.instantiateViewController(withIdentifier: "Second")
        
        ///全屏
        controller.modalPresentationStyle = .fullScreen
        //关闭当前界面
        present(controller,animated: true)
    }
}

