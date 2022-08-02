//
//  RemindersViewController.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 22/11/21.
//

import UIKit

class RemindersViewController: UIViewController {

    var strName : String?
    var arrList = [[String: Any]]()
    
    @IBOutlet weak var tblReminder: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "arrow_left"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(btnClickback), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        self.navigationItem.setLeftBarButtonItems([item1], animated: true)
        
        self.navigationItem.title = "Reminders"
        self.navigationController!.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white,
            NSAttributedString.Key.font: UIFont(name: "Rubik-Regular", size: 20)!]

        
        
        let btn2 = UIButton(type: .custom)
        btn2.setImage(UIImage(named: "add"), for: .normal)
        btn2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn2.addTarget(self, action: #selector(btnClickInfo), for: .touchUpInside)
        let item2 = UIBarButtonItem(customView: btn2)
        self.navigationItem.setRightBarButtonItems([item2], animated: true)
        
        arrList = [["txt": "Sleep","time": "10:00 PM","day": "Every day"],["txt": "Sleep","time": "12:00 PM","day": "Every day"],["txt": "Awake","time": "07:00 AM","day": "Every day"]]
    
    }
    
    @objc func btnClickback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }

    
    @objc func btnClickInfo(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "EditRemindersViewController")as? EditRemindersViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }

}

extension RemindersViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RemindersTableViewCell", for: indexPath) as! RemindersTableViewCell
        let dict = arrList[indexPath.row]
        cell.selectionStyle = .none
        cell.lbltxt.text = dict["txt"] as? String
        cell.lblTime.text = dict["time"] as? String
        cell.lblDay.text = dict["day"] as? String
        cell.viewReminder.layer.cornerRadius = 10
        cell.viewReminder.clipsToBounds = true
        //cell.onSwitch
        return cell
        
    }
    
    
}
