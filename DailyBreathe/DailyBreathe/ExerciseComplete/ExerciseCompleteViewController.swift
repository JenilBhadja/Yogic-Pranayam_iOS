//
//  ExerciseCompleteViewController.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 22/11/21.
//

import UIKit

class ExerciseCompleteViewController: UIViewController {

    
    @IBAction func btnCilckHome(_ sender:UIButton){
        
    }
    
    @IBAction func btnClickRepeat(_ sender:UIButton){
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "close"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(btnClickClose), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        self.navigationItem.setLeftBarButtonItems([item1], animated: true)
    }
    
    @objc func btnClickClose(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ExerciseDetailViewController")as? ExerciseDetailViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }

  

}
