//
//  SettingsViewController.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 22/11/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var tblProfile: UITableView!
    @IBOutlet var viewSetting: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewSetting.layer.cornerRadius = 10;
        viewSetting.layer.masksToBounds = true;
        
        tblProfile.delegate = self
        tblProfile.dataSource = self
        
        let label = UILabel()
        label.textColor = UIColor.white
        label.text = "  Setting"
        label.font = UIFont(name: "Rubik-Regular", size: 25)

        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "arrow_left"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(btnClickback), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        let item2 = UIBarButtonItem(customView: label)
        self.navigationItem.setLeftBarButtonItems([item1,item2], animated: true)
        
        tblProfile.clipsToBounds = true
        tblProfile.layer.cornerRadius = 10
        tblProfile.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
        
    }
    
    @objc func btnClickback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func btnClickReminder(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "RemindersViewController")as? RemindersViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    @objc func btnClickContactUS(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ContactUSViewController")as? ContactUSViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
}
extension SettingsViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
            cell.btnReminder.addTarget(self, action: #selector(btnClickReminder(_:)), for: .touchUpInside)
            cell.btnReminder.layer.cornerRadius = 10
            cell.btnReminder.clipsToBounds = true
            cell.selectionStyle = .none
            return cell
            
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
            cell.btnContactUS.addTarget(self, action: #selector(btnClickContactUS(_:)), for: .touchUpInside)
            cell.selectionStyle = .none
            return cell
            
        }
    }
    
    
}
