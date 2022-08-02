//
//  ViewController.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 21/11/21.
//
//https://www.figma.com/file/y2eOoVNtWfKxQQxLSH96cc/DailyBreathe-(Copy)?node-id=0%3A1

import UIKit

class ViewController: UIViewController {

    //let sb = UIStoryboard(name: "Main", bundle: nil)

    @IBOutlet weak var tblHome: UITableView!
    @IBOutlet weak var tblExercise: UITableView!

    var strName : String?
    var arrList = [[String: Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //printFonts()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        
        let label = UILabel()
        label.textColor = UIColor.white
        label.text = "DailyBreathe"
        label.font = UIFont(name: "Rubik-Regular", size: 30)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: label)
    
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "setting"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(btnClickSettings(_:)), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        self.navigationItem.setRightBarButtonItems([item1], animated: true)
        
        arrList = [["imagename": "Morning"],["imagename": "Noon"],[ "imagename": "Evening"],["imagename": "Night"]]
        
    }
//    func printFonts() {
//       for familyName in UIFont.familyNames {
//           print("\n-- \(familyName) \n")
//           for fontName in UIFont.fontNames(forFamilyName: familyName) {
//               print(fontName)
//           }
//       }
//   }

    @IBAction func btnClickSettings(_ sender: UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SettingsViewController") as? SettingsViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        let dict = arrList[indexPath.row]
        //cell.lblName.text = dict["name"] as? String
        cell.selectionStyle = .none
        cell.imgName.image = UIImage(named:dict["imagename"] as! String )

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ExerciseViewController") as? ExerciseViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
   
    
    
}
