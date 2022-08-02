//
//  EditRemindersViewController.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 22/11/21.
//

import UIKit

class EditRemindersViewController: UIViewController {

    var strName : String?
    var arrList = [[String: Any]]()
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var tblReminder: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.setValue(UIColor.white, forKeyPath: "textColor")

        title = "Edit"
        self.navigationController!.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white,
            NSAttributedString.Key.font: UIFont(name: "Rubik-Regular", size: 20)!]

    
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "arrow_left"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(btnClickback), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        self.navigationItem.setLeftBarButtonItems([item1], animated: true)
    
        arrList = [["txt":"S"],["txt":"M"],["txt":"T"],["txt":"w"],["txt":"T"],["txt":"F"],["txt":"S"]]
    }
    
    @objc func btnClickback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func btnClickAdd(_ sender: UIButton)
    {
        
    }
    @IBAction func btnClickCancel(_ sender: UIButton)
    {
        
    }
}
extension EditRemindersViewController:  UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EditRemindersCollectionViewCell", for: indexPath) as! EditRemindersCollectionViewCell
        let dict = arrList[indexPath.row]
        //cell.selectionStyle = .none
        cell.lblName.text = dict["txt"] as? String
        cell.lblName?.layer.cornerRadius = (cell.lblName?.frame.size.height)!/2.0
        cell.lblName?.layer.masksToBounds = true
        cell.lblName.layer.borderWidth = 1.0
        cell.lblName.layer.borderColor = UIColor(red: 123/255.0, green: 209/255.0, blue: 253/255.0, alpha: 1.0).cgColor
        cell.lblName.backgroundColor = UIColor.clear
        //cell.onSwitch
        return cell
        
        
    }
    
    
}
