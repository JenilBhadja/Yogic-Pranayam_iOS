//
//  ExerciseDetailViewController.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 22/11/21.
//

import UIKit

class ExerciseDetailViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let label = UILabel()
        //label.textColor = UIColor.white
        //label.text = "How to do"
        //self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: label)
        
        
        //let logo = UIImage(named: "Arrow - Left")
        //let imageView = UIImageView(image:logo)
        //self.navigationItem.titleView = imageView
        //self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: imageView)
        
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "arrow_left"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(btnClickback), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        self.navigationItem.setLeftBarButtonItems([item1], animated: true)
        
        title = "Sleep"
        self.navigationController!.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white,
            NSAttributedString.Key.font: UIFont(name: "Rubik-Regular", size: 20)!]
        
        
        let btn2 = UIButton(type: .custom)
        btn2.setImage(UIImage(named: "info"), for: .normal)
        btn2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn2.addTarget(self, action: #selector(btnClickInfo), for: .touchUpInside)
        let item2 = UIBarButtonItem(customView: btn2)
        self.navigationItem.setRightBarButtonItems([item2], animated: true)
    
    }
    
    @objc func btnClickback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @objc func btnClickInfo(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ExerciseInfoViewController")as? ExerciseInfoViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}
