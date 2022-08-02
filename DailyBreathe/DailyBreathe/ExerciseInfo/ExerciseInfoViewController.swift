//
//  ExerciseInfoViewController.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 22/11/21.
//

import UIKit

class ExerciseInfoViewController: UIViewController {

    
    //@IBOutlet weak var textLbl1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        //navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black,.font: UIFont(name: "", size: 20)!]
        title = "How to do"
        self.navigationController!.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white,
            NSAttributedString.Key.font: UIFont(name: "Rubik-Regular", size: 20)!]

    
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "arrow_left"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(btnClickback), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        self.navigationItem.setLeftBarButtonItems([item1], animated: true)
    
    
    }
    
    @objc func btnClickback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    

}
