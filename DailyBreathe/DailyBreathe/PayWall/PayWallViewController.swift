//
//  PayWallViewController.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 16/12/21.
//

import UIKit

class PayWallViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Contact us"
        self.navigationController?.navigationBar.titleTextAttributes = [
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
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SettingsViewController")as? SettingsViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }


    

}
